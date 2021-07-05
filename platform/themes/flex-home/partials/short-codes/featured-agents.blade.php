<div class="padtop70">
    <div class="box_shadow">
        <div class="container-fluid w90">
            <div class="homehouse projecthome">
                <div class="row">
                    <div class="col-12">
                        <h2>{!! clean($title) !!}</h2>
                        <p>{!! clean($description) !!}</p>
                    </div>
                </div>
                <featured-agents-component url="{{ route('public.ajax.featured-agents') }}"></featured-agents-component>
            </div>
        </div>
    </div>
</div>
