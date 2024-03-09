{%- extends 'classic/index.html.j2' -%}

{% block any_cell %}
{%- if cell.metadata.get("custom_scrollable_output") %}
    <link rel="stylesheet" type="text/css" href="style.css">
    <div class="custom_scrollable_output">
        {{ super() }}
    </div>
{%- else %}
{{ super() }}
{%- endif %}
{% endblock any_cell %}
