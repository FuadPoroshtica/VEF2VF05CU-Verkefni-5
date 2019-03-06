{% extends "base.html" %}

{% block content %}
    	<div class="wrapper">
            {% set one = [] %}
            {% for item in data['results'] %}
                {% if item.company not in one %}
                    {% do one.append(item.company) %}
                    <div class="box"><a href="/company/{{ item.company }}">{{ item.company }}</a></div>
                {% endif %}
            {% endfor %}

        <div class="kort">
            <h2>Besta verðið: </h2>
            <h4>ódýrasta bensínið: <i>{{ minpriceP }}.</i> er hjá {{ companyP }}</h4>
            <h4>ódýrasta Díesel Olía: <i>{{ minpriceD }}.</i> er hjá {{ companyD }}</h4>
        </div>
            <p>Síðast uppfært: {{ data.timestampPriceCheck }}</p>
        </div>
{% endblock %}