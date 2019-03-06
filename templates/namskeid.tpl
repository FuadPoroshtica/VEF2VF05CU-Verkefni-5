{% extends "base.html" %}
{% block content %}
    <h3>{{ self.title }}</h3>
    <table>
        <tr>
            <td>Nafn: </td><td>{{ name }}</td>
        </tr>
        <tr>
            <td>Heimlisfang: </td><td>{{ home }}</td>
        </tr>
        <tr>
            <td>Netfang: </td><td>{{ email }}</td>
        </tr>
        <tr>
            <td>Símarnúmer: </td><td>{{ phone }}</td>
        </tr>
    </table>
    <table>
        <h4>Vinnustofur</h4>
        <tr>
        {% for item in course %}
        <tr>
            <td>Vinnustofa: </td><td>{{ item }}</td>
        </tr>
        {% endfor %}
        </tr>
        <tr>
        <td>Hádegisverður:</td><td>{{ food }}</td>
        </tr>
    </table>
    <div class="total">
        <p>verð án vsk: <b>{{ sum }}</b></p>
        <p>verð með 24%: <b>{{ total }} kr.</b></p>
    </div>
{% endblock %}

