@if ($category)
    <a title="{{ $category->name }}" href="{{ $category->url }}">
        <span class="content-catagory-tag">{{ $category->name }}</span>
    </a>
@endif
