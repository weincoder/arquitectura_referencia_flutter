# Widgets Bancarios 🎯

No son nuestros amados elementos gráficos de Flutter, en el mundo bancario se conoce a los widgets como el conjunto de pantallas y funcionalidades asociadas a una única experiencia; por ejemplo envío de dinero, pago de cuentas, consulta de productos , etc. (Te dejo algunos enlaces: [1](https://www.frontwavecu.com/Your-Money/Manage/Digital-Banking/Digital-Banking-Help/Widgets) , [2](https://medium.com/xebia-engineering/previewing-backbase-widgets-using-storybook-483d00af2e5a)).
Entonces, llevado al mundo Flutter, podríamos crear un conjunto de widgets por cada funcionalidad definida por el negocio. Sin embargo, estos elementos deben ser parametrizables y adaptables a las necesidades de cada uno de nuestros canales.
¿Cómo construir un widget en Flutter?
En Flutter existe la posibilidad de crear paquetes que puedan ser reutilizados en nuevos proyectos, utilizando el siguiente comando :
```
flutter create --template=package name
```
Por lo tanto, decidimos crear un paquete por cada una de las funcionalidades. Al ser soluciones centralizadas en el negocio, resulta muy conveniente construirlos utilizando arquitectura limpia (te dejo un [enlace](https://medium.com/bancolombia-tech/deber%C3%ADas-implementar-arquitectura-limpia-en-flutter-a0e1631de5d2) que explica cómo implementar esta arquitectura).
Esta estrategia permitió tener un equipo trabajando en el Widget de Envío de dinero, otro en el Widget de Pago de Facturas y ninguno afectando la construcción del otro. Cada elemento cuenta con sus propias pruebas unitarias y pruebas de integración contra ambientes pre-productivos.
Cuando un equipo desea utilizar un widget ya construido, puede optar por apuntar directamente al repositorio donde esta publicado y a una versión específica de la siguiente forma:

<div align= "center">
<IMG  src="https://miro.medium.com/max/180/0*Vtf-hS7Vc-5KuCGD.gif"/>
</div>
Widget Envio de dinero
Todos los textos (títulos, subtítulos, párrafos, etc.) pueden ser parametrizados por cada equipo que emplee los widgets. Estos elementos contienen todos los escenarios para la experiencia, cada usuario del widget habilita únicamente las pantallas que necesita. Para apuntar a su propio backend empleando arquitectura limpia, solo tiene que construir la capa de infraestructura, pues el widget tiene definida la capa de dominio y la UI. En los escenarios donde todas las bancas apunten a un mismo backend, el widget vendrá completamente listo para su uso, incluyendo su capa de infraestructura.
Para el momento de escrito este artículo, contamos con más de 36 Widgets completamente parametrizables construidos en Flutter.