<?php

use App\Payment;
use App\Providers\GenericHelperServiceProvider;
use App\Providers\InstallerServiceProvider;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

if (!function_exists('getSetting')) {
    function getSetting($key, $default = null)
    {
        try {
            $dbSetting = TCG\Voyager\Facades\Voyager::setting($key, $default);
        } catch (Exception $exception) {
            $dbSetting = null;
        }

        $configSetting = config('app.' . $key);
        if ($dbSetting) {
            // If voyager setting is file type, extract the value only
            if (is_string($dbSetting) && strpos($dbSetting, 'download_link')) {
                $file = json_decode($dbSetting);
                if ($file) {
                    $file = Storage::disk(config('filesystems.defaultFilesystemDriver'))->url(str_replace('\\', '/', $file[0]->download_link));
                }
                return $file;
            }

            return $dbSetting;
        }
        if ($configSetting) {
            return $configSetting;
        }

        return $default;
    }
}

function getLockCode()
{
    if (session()->get(InstallerServiceProvider::$lockCode) == env('APP_KEY')) {
        return true;
    } else {
        return false;
    }
}

function setLockCode($code)
{
    $sessData = [];
    $sessData[$code] = env('APP_KEY');
    session($sessData);
    return true;
}

function getUserAvatarAttribute($a)
{
    return GenericHelperServiceProvider::getStorageAvatarPath($a);
}

function getLicenseType()
{
    $licenseType = 'Unlicensed';
    if (file_exists(storage_path('app/installed'))) {
        $licenseV = json_decode(file_get_contents(storage_path('app/installed')));
        if (isset($licenseV->data) && isset($licenseV->data->license)) {
            $licenseType = $licenseV->data->license;
        }
    }
    return $licenseType;
}

function handledExec($command, $throw_exception = true)
{
    $result = exec('(' . $command . ')', $output, $return_code);
    if ($throw_exception) {
        if (($result === false) || ($return_code !== 0)) {
            throw new Exception('Error processing command: ' . $command . "\n\n" . implode("\n", $output) . "\n\n");
        }
    }
    return implode("\n", $output);
}

function checkMysqlndForPDO()
{
    $dbHost = env('DB_HOST');
    $dbUser = env('DB_USERNAME');
    $dbPass = env('DB_PASSWORD');
    $dbName = env('DB_DATABASE');

    $pdo = new PDO('mysql:host=' . $dbHost . ';dbname=' . $dbName, $dbUser, $dbPass);
    if (strpos($pdo->getAttribute(PDO::ATTR_CLIENT_VERSION), 'mysqlnd') !== false) {
        return true;
    }
    return false;
}

function checkForMysqlND()
{
    if (extension_loaded('mysqlnd')) {
        return true;
    }
    return false;
}


function getUserCountry($type)
{
    try {
        $ip = \request()->ip();
        return Cache::remember('ip' . $ip . $type, 60 * 60 * 2, function () use ($ip, $type) {
            $data = Http::get("http://www.geoplugin.net/json.gp?ip=" . $ip);
            if (isset($data[$type])) {
                return $data[$type];
            } else {
                return "US";
            }
        });
    } catch (Exception $e) {
        return "US";
    }
    return "US";
}

// checking if user have setup stripe
function getUserStripeStatus()
{
    if (
        auth()->user()->stripe_connect == 1
        && auth()->user()->stripe_id != null
        && auth()->user()->stripe_link != null
    ) {
        return true;
    } else {
        return false;
    }
}


function detectFileType($fileName)
{
    $extension = pathinfo($fileName, PATHINFO_EXTENSION);

    $imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
    $videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'mkv'];

    if (in_array(strtolower($extension), $imageExtensions)) {
        return 'image';
    } elseif (in_array(strtolower($extension), $videoExtensions)) {
        return 'video';
    } else {
        return 'unknown';
    }
}

function getFileTypeFromFileName($fileName)
{
    $extension = pathinfo($fileName, PATHINFO_EXTENSION);
    return strtolower($extension);
}

function getCreatorBalance($creator_id)
{
    $payment = Payment::where('user_id', $creator_id)->where('status', true)->sum('amount');
    return $payment;
}

function getCreatorPendingBalance($creator_id)
{
    $payment = Payment::where('user_id', $creator_id)->where('status', false)->sum('amount');
    return $payment;
}
