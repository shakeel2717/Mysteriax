<div class="py-2 notification-box  pl-3 pl-md-4 {{ !$notification->read ? 'unread' : '' }}">
    <div class="d-flex flex-row-no-rtl my-1">
        @if ($notification->fromUser)
            <div class="">
                <img class="rounded-circle avatar" src="{{ $notification->fromUser->avatar }}"
                    alt="{{ $notification->fromUser->username }}">
            </div>
        @else
            <div class="">
                <img class="rounded-circle avatar"
                    src="{{ \App\Providers\GenericHelperServiceProvider::getStorageAvatarPath(null) }}" alt="Avatar">
            </div>
        @endif
        <div class="pl-3 w-100">
            <div class="d-flex flex-row-no-rtl justify-content-between">
                @if ($notification->fromUser)
                    <div class="d-flex flex-column">
                        <h6 class="text-bold  m-0 p-0 d-flex"><a
                                href="{{ route('profile', ['username' => $notification->fromUser->username]) }}"
                                class="text-dark-r">{{ $notification->fromUser->name }}</a></h6>
                        <div class="text-bold"><a
                                href="{{ route('profile', ['username' => $notification->fromUser->username]) }}"
                                class="text-muted">{{ '@' }}{{ $notification->fromUser->username }}</a></div>
                    </div>
                @endif
                <div class="position-absolute separator">
                </div>
            </div>
            <div>
                <div class="my-1 text-break pr-3 {{ !$notification->read ? 'text-bold' : '' }}">
                    @switch($notification->type)
                        @case(\App\Model\Notification::NEW_TIP)
                            {{ $notification->transaction->sender->name }} {{ __('sent you a tip of') }}
                            {{ \App\Providers\PaymentsServiceProvider::getTransactionAmountWithTaxesDeducted($notification->transaction) }}
                            {{ $notification->transaction->currency }}.
                        @break

                        @case(\App\Model\Notification::NEW_REACTION)
                            @if ($notification->post_id)
                                {{ __(':name liked your', ['name' => $notification->fromUser->name]) }} <a
                                    href="{{ route('posts.get', ['username' => $notification->post->user->username, 'post_id' => $notification->post->id]) }}"
                                    target="_blank">{{ __('post') }}</a>
                            @endif
                            @if ($notification->post_comment_id)
                                {{ __(':name liked your comment', ['name' => $notification->postComment->author->name]) }}
                            @endif
                        @break

                        @case(\App\Model\Notification::NEW_COMMENT)
                            {{ __(':name added a new comment on your', ['name' => $notification->fromUser->name]) }} <a
                                href="{{ route('posts.get', ['username' => $notification->postComment->post->user->username, 'post_id' => $notification->postComment->post->id]) }}"
                                target="_blank">{{ __('post') }}</a>
                        @break

                        @case(\App\Model\Notification::NEW_SUBSCRIPTION)
                            {{ $notification->fromUser->name }} {{ __(' subscribed to your profile') }}
                        @break

                        @case(\App\Model\Notification::NEW_FOLLOWER)
                            {{ $notification->fromUser->name }} {{ __(' start following you') }}
                        @break

                        @case(\App\Model\Notification::WITHDRAWAL_ACTION)
                            {{ __('Withdrawal processed', [
                                'currencySymbol' => \App\Providers\SettingsServiceProvider::getWebsiteCurrencySymbol(),
                                'amount' => $notification->withdrawal->amount,
                                'status' => $notification->withdrawal->status,
                            ]) }}
                        @break

                        @case(\App\Model\Notification::NEW_MESSAGE)
                            {{ __('Send you a message: `:message`', ['message' => $notification->userMessage->message]) }}
                        @break

                        @case(\App\Model\Notification::EXPIRING_STREAM)
                            {{ __('Your live streaming is about to end in 30 minutes. You can start another one afterwards.') }}
                        @break

                        @case(\App\Model\Notification::PPV_UNLOCK)
                            {{ $notification->fromUser->name }}
                            @if ($notification->post)
                                {{ __('bought your ' . $notification->PPVUnlockType . ' for $') . number_format($notification->post->price, 2) . '.' }}
                            @else
                                {{ __('bought your ' . $notification->PPVUnlockType) . '.' }}
                            @endif
                        @break

                    @endswitch

                </div>
                <div class="d-flex text-muted">
                    <div>{{ \Carbon\Carbon::parse($notification->created_at)->diffForhumans() }} </div>
                </div>
            </div>
        </div>
        <a href="{{ route('my.messenger.show', ['user' => $notification->fromUser->id]) }}"
            class="h-pill-primary nav-link mr-2 d-flex justify-content-between">
            <div class="d-flex justify-content-center align-items-center">
                <div class="icon-wrapper d-flex justify-content-center align-items-center position-relative">
                    @include('elements.icon', ['icon' => 'chatbubble-outline', 'variant' => 'large'])
                </div>
            </div>
        </a>
    </div>
</div>
