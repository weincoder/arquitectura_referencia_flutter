We decided to use the Atomic Design methodology to implement our design system. Brad Frost, its creator, explained that we must divide our digital experiences into the following elements:

### Atoms
Atoms are components that cannot be divided into smaller elements. An example is button, input, h1, or in Flutter the basic elements (like the IconButton).

### Molecules
Molecules are functional units of several atoms, but they do not have multiple responsibilities. For instance, an icon, a text, and a button inside a card are modal, and it is a molecule because it retains responsibility.

### Organisms
Organisms are elements composed of the union of several molecules and atoms. These can have different responsibilities and generate multiple events. An example would be the header, navbar, sliders, etc.

### Templates
Templates define the order and configure the arrangement of elements.

### Pages
They are different screens exposed to the end-user.

### Tokens
We still had a problem, how could we make the colors, shadows, animations, fonts, and iconographies used along with the whole project standard?

We decided to have all these elements in a layer that we call tokens. These are the basis of atoms.

The advantage is changing some color of mark, font, shadow, or animation; All elements are updated automatically with the new values.

Foundation
No component should directly depend on tokens; remember that its definition should not be tied to any. Therefore, we establish a bridge between the token and the widget definition in the Foundation layer.


## Features

### Tokens
- colors.dart
- shadows.dart
- sizes.dart
- spacing.dart
- typography.dart
### foundations
- colors.dart
- sizes.dart
- spacing.dart
- themes/weincode_themes.dart
- typo.dart
### atoms
- weincode_asset_image.dart
- weincode_image.dart
- weincode_separeted.dart
### molecules
- card_tile.dart
- circle_accionable_card.dart
### organisms
- list_of_cards.dart
### templates
- models/showinfo.dart
- show_component_template.dart
- show_info_template.dart
### pages
- success_trx.dart



## Getting started

pub get 

## Usage

After install the library you can use the components

```dart
     const WeincodeAssetImage(
        path: 'assets/images/atoms.png',
        widthImage: 100,
      ),
```

## Additional information

This is a little example about implement atomic design in flutter check this article:
https://medium.com/bancolombia-tech/building-a-design-system-using-atomic-design-methodology-in-flutter-327142bf30c2
