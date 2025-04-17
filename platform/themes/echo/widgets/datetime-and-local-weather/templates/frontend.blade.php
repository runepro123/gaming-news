@php
    $enabledWeather = Arr::get($config, 'enable_weather', true);
    $enabledDatetime = Arr::get($config, 'enable_datetime', true);
@endphp

@if ($enabledWeather || $enabledDatetime)
    <div class="datetime-and-local-weather-content d-flex w-100 justify-content-{{ $alignment }}">
        <div class="echo-header-top-date flex-wrap">
            @if ($enabledDatetime)
                <div class="echo-day-name">
                    <span class="me-1"><i class="fa-regular fa-calendar"></i></span>
                    <span id="echo-day" class="echo-home-day"></span>
                    <span id="echo-date"></span>
                </div>
            @endif

            @if ($enabledWeather)
                <div class="echo-date-time local-weather-content d-flex" style="display: none"></div>

                <div class="echo-date-time local-weather-content-template d-none">
                    <span class="me-1"><i class="fa-regular fa-cloud"></i></span>
                    <span><strong>__temp__</strong> __location__ </span>
                </div>
            @endif
        </div>
    </div>
@endif

<script>
    window.addEventListener('load', function () {
        const element = document.querySelector('.local-weather-content');

        if (! element) {
            return;
        }

        $.ajax({
            url: 'https://wttr.in',
            data: {format: 'j1'},
            success: (res) => {
                const template = document.querySelector('.local-weather-content-template').innerHTML;

                const temp = res.current_condition[0].temp_C;
                const location = res.nearest_area[0].areaName[0].value;

                let html = template.replace('__temp__', temp + '°C, ');
                html = html.replace('__location__', location);

                element.innerHTML = html;
                element.style.display = 'block';
            },
            error: () => {
                element.remove();
            },
        });
    });
</script>
