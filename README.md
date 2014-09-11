## IMPORTANT:
  This extension requires `refinerycms`, `refinerycms-themes`, `refinerycms-snippets` gems


### Using

```
{% for part in page.parts %}
    {% for snippet in part.snippets %}
        {{ snippet.body }}
    {% endfor %}
{% endfor %}
```