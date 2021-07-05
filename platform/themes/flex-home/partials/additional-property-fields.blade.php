<div class="form-group">
    <label class="control-label" for="video_thumbnail">{{ __('Youtube Video Thumbnail') }}</label>
    {!! Form::mediaImage('video[thumbnail]', $videoThumbnail) !!}
</div>

<div class="form-group">
    <label class="control-label" for="video_url">{{ __('Youtube Video URL') }}</label>
    {!! Form::text('video[url]', $videoUrl, [
        'id'            => 'video_url',
        'class'         =>'form-control',
        'placeholder'   => 'https://www.youtube.com/watch?v=FN7ALfpGxiI',
        'data-counter'  => 255]) !!}
</div>
