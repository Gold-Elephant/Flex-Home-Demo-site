<section class="main-homes">
    <div class="bgheadproject hidden-xs">
        <div class="description">
            <div class="container-fluid w90">
                <h1 class="text-center">{{ $account->name }}</h1>
                <p class="text-center">{{ $account->description }}</p>
                {!! Theme::partial('breadcrumb') !!}
            </div>
        </div>
    </div>
    <div class="container-fluid w90 padtop30">
        <div class="rowm10">
            <h5 class="headifhouse">{{ __('Agent info') }}</h5>
            <div>
                <div style="float: left; padding-right: 15px;">
                    @if ($account->username)
                        <a href="{{ route('public.agent', $account->username) }}">
                            @if ($account->avatar->url)
                                <img src="{{ RvMedia::getImageUrl($account->avatar->url, 'thumb') }}" alt="{{ $account->name }}" class="img-thumbnail">
                            @else
                                <img src="{{ $account->avatar_url }}" alt="{{ $account->name }}" class="img-thumbnail">
                            @endif
                        </a>
                    @else
                        @if ($account->avatar->url)
                            <img src="{{ RvMedia::getImageUrl($account->avatar->url, 'thumb') }}" alt="{{ $account->name }}" class="img-thumbnail">
                        @else
                            <img src="{{ $account->avatar_url }}" alt="{{ $account->name }}" class="img-thumbnail">
                        @endif
                    @endif
                </div>
                <div style="float: left">
                    <h4>{{ $account->name }}</h4>
                    <p><strong>{{ __('Email') }}</strong>: {{ $account->email }}</p>
                    <p><strong>{{ __('Phone') }}</strong>: {{ $account->phone }}</p>
                    <p><strong>{{ __('Joined on') }}</strong>: {{ $account->created_at->toDateString() }}</p>
                </div>
                <div class="clearfix"></div>
            </div>

            <br>

            @if ($properties->count())
                <h5 class="headifhouse">{{ __('Properties by this agent') }}</h5>
                <div class="projecthome px-2">
                    <div class="row">
                        @foreach ($properties as $property)
                            <div class="col-6 col-sm-6 col-md-3 colm10">
                                {!! Theme::partial('real-estate.properties.item', ['property' => $property]) !!}
                            </div>
                        @endforeach
                    </div>
                </div>
            @else
                <p class="item">{{ __('0 results') }}</p>
            @endif
        </div>
    </div>
</section>
<br>
<div class="col-sm-12">
    <nav class="d-flex justify-content-center pt-3" aria-label="Page navigation example">
        {!! $properties->withQueryString()->links() !!}
    </nav>
</div>
<br>
<br>
