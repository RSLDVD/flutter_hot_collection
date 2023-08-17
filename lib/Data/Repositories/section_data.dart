import '../Models/section.dart';

// ignore: non_constant_identifier_names
List<Section> K1sectionData = [
  Section(
    id: 's1',
    category: 'cat1',
    title: 'Scaffold',
    subtitle:
        'Elevating UI with Scaffold: Creating Multifaceted, Interactive Interfaces',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_scaffold_ex',
    description: '''
This Flutter code showcases the usage of the `Scaffold` widget and related components to build a comprehensive app layout with various features. The code creates a simple app with a navigation drawer, an app bar, a body section, a floating action button, and a bottom navigation bar.

1. MaterialApp and Scaffold Setup:
The `WidgetScaffoldEx` class represents the entry point of the app. It uses the `MaterialApp` widget to set up the app with a primary blue color theme. The `ScaffoldExample` widget serves as the home screen.

2. App Bar:
Inside the `ScaffoldExample`, the `appBar` property is configured using the `AppBar` widget. The app bar includes a title ("Scaffold Example") and an actions list with an `IconButton`. The `IconButton` displays a settings icon. The `onPressed` callback for the icon button is currently empty.

3. Navigation Drawer:
The `drawer` property of the `Scaffold` is set to a `Drawer` widget. The drawer contains a `ListView` with a `DrawerHeader` and two `ListTile` widgets. The `DrawerHeader` displays a blue background with the text "Drawer Header" in white. The `ListTile` widgets represent options for "Home" and "Profile". Both options include icons (home and account circle) and `onTap` callbacks. The callbacks are currently empty but can be used to navigate to respective screens.

4. Body Content:
The `body` property of the `Scaffold` is configured with a `Center` widget. Inside the `Center`, a `Column` widget is used to organize the content vertically. The column contains:
- A `Text` widget displaying "Welcome to the Scaffold Example" with a font size of 18.
- A `SizedBox` widget for spacing.
- An `ElevatedButton` with the label "Click Me". The button has an `onPressed` callback that is currently empty.

5. Floating Action Button:
The `floatingActionButton` property of the `Scaffold` includes a `FloatingActionButton` widget. The button displays a circular icon (add icon) and has an `onPressed` callback that is currently empty.

6. Bottom Navigation Bar:
The `bottomNavigationBar` property of the `Scaffold` is set to a `BottomNavigationBar` widget. The widget contains three `BottomNavigationBarItem` widgets representing "Home", "Explore", and "Profile" options. Each item has an icon (home, explore, and person icons) and a label. The labels are "Home", "Explore", and "Profile".

This example demonstrates how to create a basic app layout using the `Scaffold` widget and various components to build an intuitive user interface. You can further customize and enhance this layout by adding functionality to the callbacks and integrating navigation between different screens.
''',
  ),
  Section(
    id: 's2',
    category: 'cat1',
    title: 'Stateless',
    subtitle: 'Building Vibrant and Consistent Interfaces',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_stateless_ex',
    description:
        "This code exemplifies the usage of `StatelessWidget` and demonstrates the creation of reusable components in a Flutter app.\n\n"
        "The `WidgetStatelessEx` class is a `StatelessWidget` that illustrates how to use a `MaterialApp` widget to set up the app's title and theme. It sets the `StatelessWidgetExample` as the home page of the app.\n\n"
        "The `StatelessWidgetExample` class, also a `StatelessWidget`, showcases the composition of different widgets to create a functional UI:\n\n"
        "1. App Bar:\n An app bar appears at the top of the screen with the title \"StatelessWidget Example.\"\n\n"
        "2. Body:\n The main content of the app is centered using a `Center` widget. Inside this center, a `Column` is utilized to vertically arrange two components:\n"
        "- `ColoredBoxWidget`: This custom widget displays a colored box measuring 150x150 pixels. The box is blue in color, and a centered `Text` widget inside it reads \"Colored Box\" with white color and a font size of 18.\n"
        "- `RoundedButtonWidget`: This custom widget is a reusable `ElevatedButton` with rounded corners. It takes two required parameters: `buttonText` (the label for the button) and `onPressed` (the callback function to execute when the button is pressed).\n\n"
        "By using these components, the code effectively demonstrates the principles of creating reusable widgets using the `StatelessWidget` class. Each custom widget (`ColoredBoxWidget` and `RoundedButtonWidget`) encapsulates specific functionality, promoting clean and modular code design. The `StatelessWidget` class is ideal for components that don't require internal state management, making it an excellent choice for creating UI elements that can be easily composed and combined to build complex user interfaces.\n\n",
  ),
  Section(
    id: 's3',
    category: 'cat1',
    title: 'Stateful',
    subtitle: 'Crafting Dynamic and Engaging Interfaces',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_stateful_ex',
    description: '''
This code demonstrates the use of a `StatefulWidget` in Flutter, showcasing how to manage and update the state of a widget and its child components.

The `WidgetStatefulEx` class extends `StatefulWidget` and represents the main application page. It contains a boolean `_isHighlighted` that determines whether a colored box and a toggle button are highlighted or not. The `_toggleHighlight` method toggles this boolean state when the toggle button is pressed.

The `_StatefulWidgetExampleState` class is a state class associated with `WidgetStatefulEx`. Inside the `build` method, a `Scaffold` widget is used to set up the app's UI structure. It contains an app bar with the title "StatefulWidget Example" and a `Center` widget to vertically center the UI components.

Inside the `Center` widget, a `Column` arranges two components:
1. `ColoredBoxWidget`:\n This custom widget displays a colored box that changes color based on the `_isHighlighted` value. The color alternates between amber (highlighted) and grey (not highlighted). A `Text` widget inside the box dynamically displays "Highlighted" or "Not Highlighted" based on the `_isHighlighted` value.

2. `ToggleButtonWidget`:\n Another custom widget, this one provides a button that toggles the `_isHighlighted` state when pressed. The button label reads "Turn On" when not highlighted and "Turn Off" when highlighted.

By utilizing the `StatefulWidget` class, the code illustrates how to manage dynamic UI changes and maintain state in response to user interactions. The `_StatefulWidgetExampleState` class extends the `State` class to enable state updates using the `setState` method. When the toggle button is pressed, the state is updated, triggering a rebuild of the widget tree to reflect the changes in the UI.

This example underscores the power of `StatefulWidget` for managing complex UI states and rendering dynamic content based on user actions, making it an essential tool for creating interactive and responsive Flutter applications.
''',
  ),
  Section(
    id: 's4',
    category: 'cat1',
    title: 'Icon',
    subtitle: 'Enhancing Visual Communication with Symbolic Graphics',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_icon_ex',
    description:
        "This code showcases the usage of the `Icon` widget in Flutter to display a variety of icons with different colors and sizes.\n\n"
        "The `WidgetIconEx` class is a stateless widget that demonstrates the use of the `Scaffold` widget to structure the app's UI. Inside the `Scaffold`, a `Center` widget is used to horizontally and vertically center the child widgets.\n\n"
        "The `Column` widget is utilized to organize a series of `Icon` widgets vertically. Each `Icon` widget represents an individual icon from the Flutter's icon library and is customized with specific size and color attributes.\n\n"
        "Here's the list of icons displayed in the app:\n"
        "1. A flutter icon (`Icons.flutter_dash_sharp`) with a size of 40.0 and a green color.\n"
        "2. A home icon (`Icons.home`) with a size of 40.0 and a red color.\n"
        "3. An alarm icon (`Icons.add_alarm_sharp`) with a size of 40.0 and a semi-transparent black color (black45).\n"
        "4. A remove circle icon (`Icons.remove_circle`) with a size of 40.0 and a deep blue color.\n"
        "5. An accessible forward icon (`Icons.accessible_forward`) with a size of 40.0 and a light purple color.\n\n"
        "These `Icon` widgets are positioned in a column layout within the `Center` widget. Each icon's size, color, and shape add visual significance to the app's interface.\n\n"
        "This example illustrates how to incorporate icons into your Flutter application using the `Icon` widget. Icons can enhance the visual representation of your app and provide a visual language that users can quickly understand.",
  ),
  Section(
    id: 's5',
    category: 'cat1',
    title: 'Text',
    subtitle:
        'Customized Text Display:Styling and RichText Widgets for Creating Colorful and Interactive Text in Flutter',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
    description:
        "This code showcases the usage of the Text and RichText widgets in Flutter for displaying and styling text in your app.\n\n"
        "The WidgetTextEx class is a StatelessWidget that demonstrates the implementation of various text styles and alignments using the Scaffold widget to structure the app's UI.\n\n"
        "Inside the Scaffold, a SingleChildScrollView widget is used to enable scrolling when the content overflows the screen. The main content is organized using a Column widget with crossAxisAlignment set to CrossAxisAlignment.start.\n\n"
        "The app demonstrates the following text examples:\n\n"
        "1. Simple Text:\n A Text widget displays 'Simple Text' with the following styles:\n"
        "- Font size: 20\n"
        "- Font weight: Bold\n"
        "- Color: Blue\n"
        "- Letter spacing: 8\n"
        "- Italic font style\n"
        "- Underline decoration with red color and thickness 2\n\n"
        "2. Text with Different Alignments:\n A Text widget displays 'Text with Different Alignments' with the textAlign property set to TextAlign.center.\n\n"
        "3. RichText Example:\n A RichText widget displays styled text with multiple attributes:\n"
        "- The base text is 'RichText: ' in blue color and font size 18.\n"
        "- Child TextSpan widgets are used for different styled segments:\n"
        "  - 'Colored' in red color and bold font weight.\n"
        "  - ' and '\n"
        "  - 'Bold' in bold font weight and italic font style.\n"
        "  - '  ' (two spaces)\n"
        "  - 'Text' in brown color with lime green background color.\n\n"
        "4. Custom Link Example:\n Another RichText widget is used to display a custom link 'Click Me' that responds to a tap gesture.\n"
        "- The link is styled in blue color with an underline decoration.\n"
        "- A TapGestureRecognizer is attached to the link's recognizer property, and when tapped, a SnackBar is displayed using ScaffoldMessenger to show the message 'Link Clicked'.\n\n"
        "These examples illustrate how to style and format text using the Text and RichText widgets in Flutter. The RichText widget offers the ability to create more complex text displays with different styles and interactive elements, enhancing the user experience of your app.",
  ),
  Section(
      id: 's6',
      category: 'cat1',
      title: 'Row,Column & Expanded',
      subtitle: 'Layouts with Row, Column & Expanded: Crafting Versatile UIs',
      imagePath: 'imagePath',
      sourceFilePath: '/widget_rowcolumn_ex',
      description: "Flutter Row, Column, and Expanded Layout Example\n\n"
          "This Flutter code demonstrates the usage of the Row, Column, and Expanded widgets to create flexible and responsive layouts. The code constructs a layout with various arrangements of colored boxes using rows, columns, and expanded sections.\n\n"
          "1. App Bar Setup:\n"
          "The WidgetRowColumnEx class represents the entry point of the app. The AppBar widget is used to create an app bar with the title \"Row, Column & Expanded Example\".\n\n"
          "2. Body Layout:\n"
          "The body of the app is contained in a SingleChildScrollView, ensuring scrollability when the content exceeds the screen height. Inside the Center widget, multiple layout arrangements are showcased using rows, columns, and expanded widgets.\n\n"
          "3. Row with Space Evenly Alignment:\n"
          "The first example demonstrates a Row widget containing two ColorBox widgets. The mainAxisAlignment property is set to MainAxisAlignment.spaceEvenly, causing the boxes to be evenly spaced along the row. The boxes are colored pink and green.\n\n"
          "4. Vertical Spacing with Column:\n"
          "The second example features a Column widget containing two vertically stacked ColorBox widgets colored orange and purple. The boxes are aligned in the main axis.\n\n"
          "5. Flexible Height with SizedBox and Expanded:\n"
          "The third example combines a SizedBox with a Column widget. The SizedBox allows for a fixed height of 400 pixels. Inside the column, two Expanded widgets are used to manage flexible heights. The first box is red and occupies one-third of the height, while the second box is teal and takes up the remaining two-thirds of the height.\n\n"
          "6. Flexible Width with Row and Expanded:\n"
          "The fourth example demonstrates a Row containing three Expanded widgets. The first box, colored yellow, occupies two parts out of six, the second box (indigo) occupies three parts, and the third box (cyan) occupies one part.\n\n"
          "7. ColorBox Widget:\n"
          "The ColorBox class defines a Container widget with a fixed width and height of 100 pixels. It takes a Color parameter to specify its background color.\n\n"
          "These layout arrangements showcase how Row, Column, and Expanded widgets can be used to create responsive and flexible UI layouts. The provided code helps in understanding how to manage space distribution, alignment, and responsiveness within the Flutter app.\n\n"),
  Section(
    id: 's7',
    category: 'cat1',
    title: 'Container',
    subtitle:
        'Layout and Spacing: Creating Aesthetic UIs with Container, Margin & Padding',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_container_ex',
    description:
        "This code showcases the utilization of the Container widget along with margin and padding settings in Flutter to create visually appealing and organized layouts.\n\n"
        "The WidgetContainerEx class is a StatelessWidget that demonstrates the usage of Container, margin, and padding to structure and style UI elements using the Scaffold widget.\n\n"
        "Inside the Scaffold, a Center widget is employed to vertically and horizontally center the child widgets within the available screen space.\n\n"
        "The UI contains three instances of the Container widget, each highlighting different aspects:\n\n"
        "1. Basic Container:\n"
        "- A Container with a fixed width and height of 150x150 pixels.\n"
        "- It has a blue color background.\n"
        "- A Center widget is nested inside it, containing a Text widget with white color and a font size of 18, displaying 'Container'.\n\n"
        "2. Container with Margin & Padding:\n"
        "- A Container with margin and padding properties set using EdgeInsets.all.\n"
        "- The margin is 20.0 pixels on all sides, and the padding is 10.0 pixels on all sides.\n"
        "- The container has a green color background and rounded corners with a border radius of 10.0.\n"
        "- A Text widget inside it displays 'With Margin & Padding' with white color and a font size of 18.\n\n"
        "3. Container with Custom Margin & Padding:\n"
        "- A Container with customized margin and padding settings using EdgeInsets.symmetric.\n"
        "- The vertical margin is 10.0 pixels, and the horizontal margin is 50.0 pixels.\n"
        "- The vertical padding is 20.0 pixels, and the horizontal padding is 30.0 pixels.\n"
        "- The container has an orange color background and rounded corners with a border radius of 20.0.\n"
        "- A Text widget inside it displays 'Custom Margin & Padding' with white color and a font size of 18.\n\n"
        "These examples showcase how the Container widget is used to wrap and stylize widgets, providing a structured layout along with margin and padding adjustments. The flexibility of Containers, combined with margin and padding properties, enables developers to create visually pleasing UI components with consistent spacing and alignment.\n\n",
  ),
  Section(
    id: 's8',
    category: 'cat1',
    title: 'PlaceHolder',
    subtitle: 'Using Placeholder for Layout and Design',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_placeholder_ex',
    description:
        "This code demonstrates the use of the Placeholder widget in Flutter to visualize the layout structure during development.\n\n"
        "The WidgetPlaceHolderEx class is a StatelessWidget that showcases how to incorporate Placeholder widgets within a Scaffold to create a temporary representation of UI elements.\n\n"
        "Inside the Scaffold, a Center widget is employed to vertically and horizontally center the child widgets within the available screen space.\n\n"
        "Two instances of the Placeholder widget are used to illustrate the concept:\n\n"
        "1. Basic Placeholder:\n"
        "- A Placeholder widget is placed directly within the Column.\n"
        "- The Placeholder appears as a blue rectangular box with dimensions 100x100 pixels.\n"
        "- It offers a visual indication of where a widget will be positioned in the layout.\n\n"
        "2. Placeholder with Padding:\n"
        "- A Padding widget surrounds the Placeholder to provide spacing and alignment control.\n"
        "- The Padding has 20.0 pixels of padding on all sides.\n"
        "- The Placeholder inside the Padding has a green color and dimensions 150x150 pixels.\n"
        "- This combination showcases how Placeholder widgets can be organized within a structured layout.\n\n"
        "These Placeholder widgets are useful for visualizing the layout structure during development. They help developers identify the placement of UI components, sizes, and alignments, making it easier to fine-tune the overall design. Once the actual UI components are ready, Placeholder widgets can be replaced with the final widgets.\n\n\n",
  ),
  Section(
    id: 's9',
    category: 'cat1',
    title: 'Stack',
    subtitle:
        'Layered and Indexed UI Composition: Crafting Dynamic Layouts with Stack & IndexedStack',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_stack_ex',
    description:
        "This code showcases the usage of the Stack and IndexedStack widgets in Flutter to create layered and indexed layouts.\n\n"
        "The WidgetStackEx class is a StatefulWidget that demonstrates how to use the Stack and IndexedStack widgets within a Scaffold to build complex layouts.\n\n"
        "Inside the Scaffold, a Center widget is utilized to vertically and horizontally center the child widgets within the available screen space.\n\n"
        "1. Stack Widget:\n"
        "- A Stack widget is employed to layer multiple child widgets on top of each other.\n"
        "- The alignment parameter is set to Alignment.center to align the child widgets at the center of the stack.\n"
        "- Four Positioned widgets are used within the Stack, each positioned using the top, bottom, left, and right properties. These Positioned widgets are used to create overlapping containers with different colors and sizes. They visually represent the stacking concept.\n\n"
        "2. IndexedStack Widget:\n"
        "- An IndexedStack widget is utilized to display only one of its children at a time based on the provided index.\n"
        "- The index parameter is set using the _currentIndex state variable, which is updated when the user interacts with the ElevatedButtons.\n"
        "- The children of the IndexedStack are three containers with different colors and sizes. The container that corresponds to the current index is displayed while the others are hidden. This is a useful technique for creating tab-like interfaces.\n\n"
        "3. ElevatedButtons:\n"
        "- Three ElevatedButtons are provided to change the current index of the IndexedStack, demonstrating the ability to switch between different 'pages' or content views.\n"
        "- Each button updates the _currentIndex using the setState method.\n\n"
        "This example illustrates how to use the Stack and IndexedStack widgets to create complex layouts and dynamic UIs. The Stack widget is useful for layering widgets, while the IndexedStack widget simplifies the display of different views based on an index. These widgets are commonly used in scenarios where you want to overlap or switch between different components.\n\n",
  ),
  Section(
    id: 's10',
    category: 'cat1',
    title: 'CheckBox',
    subtitle: 'Building Interactive UIs with Flutter',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_checkbox_ex',
    description:
        "This code demonstrates the usage of the Checkbox widget in Flutter to create interactive checkboxes within your app."
        "The WidgetCheckBoxEx class is a StatefulWidget that showcases the implementation of a Checkbox and its state management."
        "Inside the Scaffold, a Center widget is used to vertically and horizontally center the Checkbox and the associated text within the available screen space.\n\n"
        "1. Checkbox Widget:\n"
        "- The Checkbox widget is used to create a checkbox input component that users can toggle on and off.\n"
        "- The onChanged callback is provided to handle changes to the checkbox state. When the user taps the checkbox, the onChanged callback is triggered with the new value.\n"
        "- The value parameter represents the current state of the checkbox, which is stored in the _isChecked state variable.\n"
        "- The setState method is used to update the _isChecked state when the checkbox is tapped.\n\n"
        "2. Text Widget:\n"
        "- A Text widget is used to display dynamic text that reflects the current state of the checkbox.\n"
        "- The text is composed using a ternary operator that checks whether _isChecked is true (checked) or false (unchecked).\n"
        "- The fontSize parameter defines the size of the text to ensure legibility.\n\n"
        "This example illustrates how to create interactive checkboxes using the Checkbox widget in Flutter. By using the onChanged callback and managing the checkbox state using the _isChecked variable, you can provide users with a simple way to make selections or indicate preferences within your app.\n\n\n",
  ),
  Section(
    id: 's11',
    category: 'cat1',
    title: 'Switch',
    subtitle: 'Building Dynamic UIs with Toggle able Elements',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_switch_ex',
    description:
        "This code showcases the usage of the Switch widget and its variations in Flutter to create toggleable switches within your app."
        "The WidgetSwitchEx class is a StatefulWidget that demonstrates the implementation of different types of switches and their state management."
        "Inside the Scaffold, a Column widget is used to vertically arrange multiple switch examples and their associated text labels.\n\n"
        "1. SwitchListTile Widget:\n"
        "  - The SwitchListTile widget is used to create a switch with a title in the form of a ListTile."
        "  - The value parameter represents the current state of the switch, which is stored in the _switchValue1 state variable."
        "  - The onChanged callback is provided to handle changes to the switch state when the user toggles it."
        "  - The setState method is used to update the _switchValue1 state when the switch is toggled.\n\n"
        "2. CupertinoSwitch Widget:\n"
        "  - The CupertinoSwitch widget is used to create an iOS-style switch."
        "  - The value parameter represents the current state of the switch, which is stored in the _switchValue2 state variable."
        "  - The onChanged callback is provided to handle changes to the switch state when the user toggles it."
        "  - The setState method is used to update the _switchValue2 state when the switch is toggled.\n\n"
        "3. Custom Toggle Switch:\n"
        "  - A custom toggle switch is created using GestureDetector and Container widgets."
        "  - Two separate containers are used to represent the 'On' and 'Off' states."
        "  - The _switchValue3 state variable determines which container is displayed."
        "  - The onTap callbacks for each container update the _switchValue3 state accordingly.\n\n"
        "This example demonstrates how to create different types of switches in Flutter using the Switch and CupertinoSwitch widgets."
        "The use of state management with the setState method allows users to interact with the switches and observe their effects in real-time."
        "By providing various switch options, you can offer users a range of interactive choices in your app's UI.\n\n",
  ),
  Section(
    id: 's12',
    category: 'cat1',
    title: 'Radio',
    subtitle: 'Navigating Choices with Flutter\'s Radio Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_radio_ex',
    description:
        "This code illustrates the usage of the Radio widget in Flutter to create a selection among multiple options in a group."
        "The WidgetRadioEx class is a StatefulWidget that demonstrates the implementation of radio buttons for selecting a gender."
        "The Gender enum is used to define the possible gender options: male, female, and other."
        "Inside the Scaffold, a Column widget is used to vertically arrange multiple ListTiles, each representing a gender option.\n\n"
        "1. Male Radio Button:\n"
        "- The ListTile widget is used to create a radio button with the title 'Male'.\n"
        "- The Radio widget is used as the leading widget within the ListTile.\n"
        "- The value parameter of the Radio widget is set to Gender.male, representing the male gender.\n"
        "- The groupValue parameter is set to the _selectedGender state variable, indicating the currently selected gender.\n"
        "- The onChanged callback is provided to handle changes to the selected gender.\n"
        "- When the user selects the male option, the setState method is used to update the _selectedGender to Gender.male.\n\n"
        "2. Female Radio Button:\n"
        "- Similar to the Male Radio Button, this ListTile represents the female gender option.\n"
        "- The value parameter of the Radio widget is set to Gender.female.\n\n"
        "3. Other Radio Button:\n"
        "- Similarly, this ListTile represents the 'Other' gender option.v"
        "- The value parameter of the Radio widget is set to Gender.other.\n\n"
        "By implementing the Radio widget, users can select one option from a group of mutually exclusive choices.\n"
        "The use of state management with setState ensures that the selected gender is updated and reflected in the UI.\n"
        "This example provides a clear demonstration of how to create and manage radio buttons for user input in your Flutter app's interface.\n\n",
  ),
  Section(
    id: 's13',
    category: 'cat1',
    title: 'DropDown ',
    subtitle:
        'Exploring Dropdown Widgets: Crafting Dynamic Selection Interfaces',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_dropdown_ex',
    description:
        "This code demonstrates the use of the DropdownButton widget in Flutter to create dropdown menus with selectable options."
        "The WidgetDropDownEx class is a StatefulWidget that showcases the implementation of dropdown menus for selecting fruits."
        "Inside the Scaffold, a Column widget is used to vertically arrange two DropdownButton widgets, each representing a dropdown menu with different display formats.\n\n"
        "1. Simple Dropdown Menu:\n"
        "- The _selectedFruit state variable is initialized with 'Apple' as the default selected fruit.\n"
        "- The _fruits list contains a list of fruit options: Apple, Banana, Orange, and Grapes.\n"
        "- The first DropdownButton widget uses the value parameter to indicate the currently selected fruit.\n"
        "- The onChanged callback is provided to handle changes in the selected fruit.\n"
        "- The items parameter is populated using the map function to create DropdownMenuItem widgets for each fruit.\n"
        " - Each DropdownMenuItem has a value representing the fruit and a Text widget displaying the fruit's name.\n"
        "- When the user selects a fruit, the onChanged callback updates the _selectedFruit state.\n\n"
        "2. Customized Dropdown Menu:\n"
        "- Similar to the Simple Dropdown Menu, this DropdownButton widget customizes the display of options.\n"
        "- The items parameter uses the map function to create DropdownMenuItem widgets with a customized layout.\n"
        " - Each DropdownMenuItem contains a Row with an Icon (favorite icon) and the fruit's name.\n"
        " - This adds visual appeal to the dropdown options with an icon preceding the fruit name.\n"
        "- When the user selects a fruit, the _selectedFruit state is updated, and the dropdown menu reflects the change.\n\n"
        "Using the DropdownButton widget, you can create intuitive dropdown menus that allow users to make selections from a list of options.\n"
        "The provided code demonstrates two approaches to displaying dropdown options: a simple text-based format and a customized format with icons.\n"
        "The setState method is used to manage changes to the selected fruit, ensuring that the UI is updated accordingly.\n\n",
  ),
  Section(
    id: 's14',
    category: 'cat1',
    title: 'Chip ',
    subtitle:
        'Elevating UI with Colorful Chips: Dynamic Selection and Visual Delight',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_chip_ex',
    description:
        "This code showcases the use of the Chip and FilterChip widgets in Flutter to create interactive and stylized chips for displaying content and making selections."
        "The WidgetChipEx class is a StatefulWidget that demonstrates the implementation of chips for various purposes, including displaying labels, avatars, and handling selections."
        "Inside the Scaffold, a Column widget is used to vertically arrange two Wrap widgets, each containing a set of chips with different properties.\n\n"
        "1. Basic Chips:\n"
        "- The first Wrap widget demonstrates the use of the Chip widget to display labeled chips.\n"
        "- The spacing parameter defines the space between chips.\n"
        "- The Chip widget is used to create chips with simple text labels.\n"
        "- Additional properties, such as avatar, backgroundColor, and labelStyle, are used to customize the appearance of the chips.\n"
        "- Each chip represents a concept: Flutter, Dart, Widgets, Material Design, and Responsive UI.\n\n"
        "2. Filter Chips:\n"
        "- The second Wrap widget showcases the use of FilterChip widgets to create interactive chips with selections.\n"
        "- The spacing parameter defines the space between chips.\n"
        "- FilterChip widgets are used to create chips with checkmark indicators and the ability to toggle their selected state.\n"
        "- Each FilterChip widget has properties like checkmarkColor, avatar, backgroundColor, label, selected, and onSelected.\n"
        "- The onSelected callback is provided to handle changes in the selected state.\n"
        "- When a user selects or deselects a filter chip, the _selectedLanguages list is updated accordingly using the setState method.\n"
        "- The _selectedLanguages list keeps track of the selected languages or development categories.\n\n"
        "The provided code demonstrates how to create visually appealing chips using the Chip and FilterChip widgets in Flutter.\n"
        "Chips are versatile components that can be used for various purposes, including displaying tags, categories, and making selections.\n"
        "The Wrap widget is used to ensure proper layout, especially when chips need to wrap onto the next line.\n"
        "The setState method is used to manage changes in the selected state of FilterChips, ensuring that the UI reflects the user's interactions.\n\n",
  ),
  Section(
    id: 's15',
    category: 'cat1',
    title: 'Dialogs and Bottom Sheets',
    subtitle: 'Interactive User Feedback: Exploring Dialogs and Bottom Sheets',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_dialogs_ex',
    description:
        "This code demonstrates the usage of different types of dialog and bottom sheet widgets in Flutter, allowing developers to display various types of pop-up messages and interactions within an app."
        "The WidgetDialogsEx class is a StatelessWidget that showcases the implementation of SimpleDialog, AlertDialog, SnackBar, and Modal Bottom Sheet."
        "Inside the Scaffold, a Column widget is used to vertically arrange a series of ElevatedButton widgets, each triggering the display of a different type of pop-up component.\n\n"
        "1. Simple Dialog:\n"
        "- The _showSimpleDialog method displays a SimpleDialog with multiple SimpleDialogOption widgets, allowing the user to choose an option.\n"
        "- The SimpleDialogOption widgets represent the different options available, and each has an onPressed callback that dismisses the dialog when selected.\n\n"
        "2. Alert Dialog:\n"
        "- The _showAlertDialog method displays an AlertDialog with a title, content, and an 'OK' action button.\n"
        "- The AlertDialog is used to show an important message or alert to the user.\n\n"
        "3. SnackBar:\n"
        "- The _showSnackBar method displays a SnackBar at the bottom of the screen, providing temporary feedback or alerts.\n"
        "- The SnackBar includes a message and an optional action button (Dismiss), allowing the user to take an action in response to the message.\n\n"
        "4. Modal Bottom Sheet:\n"
        "- The _showModalBottomSheet method displays a modal bottom sheet that slides up from the bottom of the screen.\n"
        "- The modal bottom sheet contains a simple text message and is used for displaying additional information or options without covering the entire screen.\n\n"
        "The provided code showcases the versatility of Flutter's dialog and bottom sheet widgets, allowing developers to present different types of messages and interactions to users."
        "These widgets are essential for providing feedback, alerts, and additional options in response to user actions or system events.\n"
        "By leveraging these pop-up components, developers can enhance the user experience and effectively communicate information within their apps.\n\n",
  ),
  Section(
    id: 's16',
    category: 'cat1',
    title: 'Stepper',
    subtitle:
        'Guided Step-by-Step Progress: Creating Interactive User Flows with the Stepper Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_stepper_ex',
    description:
        "This code demonstrates the usage of the Stepper widget in Flutter to create a linear series of steps or stages, guiding users through a multi-step process or form submission."
        "The WidgetStepperEx class is a StatefulWidget that showcases the implementation of a simple Stepper widget with multiple steps."
        "The Stepper widget provides an organized way to present sequential content and actions to users."
        "Inside the Scaffold, a Stepper widget is used to display a series of steps. Each step is defined as a Step widget and includes a title, content, and optional subtitle.\n\n"
        "1. Step 1:\n"
        "- The first step contains a title and content text for guiding users through the process.\n"
        "- The isActive property is set to true, indicating that the step is currently active.\n\n"
        "2. Step 2:\n"
        "- The second step includes a title, subtitle, and content text.\n"
        "- The isActive property is set to false, indicating that this step is not currently active.\n"
        "- Subtitles can provide additional context or information for the step.\n\n"
        "3. Step 3:\n"
        "- The third step includes a title and content text.\n"
        "- The isActive property is also set to false, marking this step as inactive.\n\n"
        "The Stepper widget provides navigation buttons that allow users to move forward or backward through the steps.\n The onStepContinue callback is triggered when the 'Continue' button is pressed, and the onStepCancel callback is triggered when the 'Back' button is pressed.\n"
        "The currentStep property keeps track of the currently active step and helps manage the navigation logic within the Stepper.\n"
        "This example showcases how to use the Stepper widget to guide users through a multi-step process, such as a registration form or configuration settings.\n"
        "The Stepper widget is a versatile tool for creating user-friendly and organized interfaces that break down complex tasks into manageable steps.\n\n",
  ),
  Section(
    id: 's17',
    category: 'cat1',
    title: 'Slider',
    subtitle:
        'Interactive Data Control: Crafting Colorful and Engaging User Experiences with the Slider Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_slider_ex',
    description:
        "This code showcases the usage of the Slider widget in Flutter to allow users to select a value within a specified range."
        "The WidgetSliderEx class is a StatefulWidget that demonstrates the implementation of a Slider widget with customizable styles and behaviors."
        "Inside the Scaffold, the Slider widget is used to create two instances of sliders with different appearances.\n\n"
        "1. Basic Slider:\n"
        "- The first Slider displays the current value selected by the user.\n"
        "- The '_sliderValue' variable holds the value of the slider, initially set to 0.5.\n"
        "- The 'onChanged' callback '_onSliderChanged' updates the '_sliderValue' when the slider thumb is moved.\n"
        "- The 'min' and 'max' properties define the range of values the slider can take.\n"
        "- The 'activeColor' sets the color of the active track, and 'inactiveColor' sets the color of the inactive track.\n\n"
        "2. Customized Slider:\n"
        "- The second Slider is wrapped with a SliderTheme widget, allowing for customization of visual aspects.\n"
        "- The 'data' property of SliderTheme is used to modify the appearance of the slider.\n"
        "- 'activeTrackColor' sets the color of the active track, 'thumbColor' sets the color of the thumb, and 'overlayColor' defines the color of the overlay when the thumb is pressed.\n"
        "- 'thumbShape' specifies the shape and size of the slider thumb, and 'overlayShape' defines the shape and size of the overlay.\n\n"
        "This example illustrates how to use the Slider widget to create interactive controls that allow users to choose values by sliding the thumb along a track.\n"
        "The Slider widget can be customized to match the visual style of the app and provide a smooth user experience.\n"
        "Sliders are often used for scenarios such as adjusting volume, brightness, or any value within a range.\n\n",
  ),
  Section(
    id: 's18',
    category: 'cat1',
    title: 'Card',
    subtitle:
        'Crafting Eye-catching Cards with Textual Information using the Card Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_card_ex',
    description:
        "This code demonstrates the usage of the Card widget in Flutter to create visually appealing cards with varying designs and content."
        "The WidgetCardEx class is a StatelessWidget that showcases the implementation of two Card widgets within a ScrollView to display card components with distinct styles."
        "Inside the Scaffold, the Card widgets are used to create visually distinct content containers.\n\n"
        "1. Blue Card:\n"
        "- The first Card has a blue color and a moderate elevation (shadow effect).\n"
        "- The 'shape' property defines the border shape of the card, in this case, a rounded rectangle with a 10-pixel radius.\n"
        "- The card's content consists of a Padding widget that contains a Text widget with white text, creating a simple blue card with centered text.\n\n"
        "2. Green Card with ListTile:\n"
        "- The second Card has a green color and a higher elevation for a more pronounced shadow effect.\n"
        "- The 'shape' property is used again to define a rounded rectangle shape with a larger radius of 20 pixels.\n"
        "- The card's content is structured using a ListTile widget, which provides a title, subtitle, and trailing icon.\n"
        "- The title and subtitle Text widgets have white and white70 (lighter shade) text colors, respectively.\n"
        "- The trailing Icon widget adds a checkmark icon with white color to the card.\n\n"
        "This example illustrates how to use the Card widget to create stylish containers for displaying content, such as text, images, or other widgets.\n"
        "Cards are a common UI pattern used to present information in an organized and visually appealing manner.\n"
        "The Card widget is customizable with properties like color, elevation, shape, and content, allowing developers to match the cards to the app's design language.\n\n\n",
  ),
  Section(
    id: 's19',
    category: 'cat1',
    title: 'ExpansionPanelList',
    subtitle:
        'Creating Organized and Expandable Content using the ExpansionPanelList Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_expansionpanellist_ex',
    description:
        "This code showcases the usage of the ExpansionPanelList widget in Flutter to create expandable card-like containers with collapsible content.\n"
        "The WidgetExpansionPanelListEx class is a StatefulWidget that demonstrates the implementation of an ExpansionPanelList widget within a ScrollView.\n"
        "The ExpansionPanelList is used to create a list of expandable panels, each containing a header and expandable content.\n"
        "The list of items (_data) is generated using the generateItems function to create a collection of items with header and content values.\n"
        "Inside the Scaffold, the ExpansionPanelList widget is used to create a collection of expandable panels.\n"
        "The expansionCallback property is defined to toggle the expansion state of an item when its header is clicked.\n"
        "Each item in the _data list is mapped to an ExpansionPanel widget within the ExpansionPanelList using the map method.\n\n"
        "1. ExpansionPanel:\n"
        "- The headerBuilder property defines the header widget for each panel, which consists of a ListTile with the header value.\n"
        "- The body property defines the expandable content for each panel, including the expanded value and a static 'Additional content goes here' subtitle.\n"
        "- The isExpanded property determines whether the panel is initially expanded or collapsed based on the item's isExpanded value.\n"
        "- By using the expansionCallback, the panels can be toggled to expand or collapse when the header is clicked.\n\n"
        "The Item class represents the data structure for each item in the ExpansionPanelList.\n"
        "Each item has an expandedValue (content text when expanded), a headerValue (header text), and a boolean isExpanded to track the expansion state.\n"
        "The generateItems function generates a list of Item instances based on the numberOfItems parameter.\n"
        "This code example demonstrates how to create a dynamic list of expandable panels using the ExpansionPanelList widget\n"
        "It showcases the use of ExpansionPanel and ListTile widgets to create a collapsible content structure that enhances the user experience by allowing users to focus on specific content sections.\n\n\n",
  ),
  Section(
    id: 's20',
    category: 'cat1',
    title: 'TextFormField',
    subtitle:
        'User Input Management: Creating Colorful Input Fields with Validation using the TextFormField Widget',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_textformfield_ex',
    description:
        "This code demonstrates the usage of TextFormField within a Form widget to create a basic form with validation in Flutter.\n"
        "The WidgetTextFormFieldEx class is a StatelessWidget that showcases the implementation of text input fields using TextFormField.\n"
        "A GlobalKey<FormState> named _formKey is created to uniquely identify the form and manage its state.\n"
        "Inside the Scaffold, an AppBar is displayed with the title 'TextFormField Example'.\n"
        "The body of the Scaffold contains a Form widget to enclose the text input fields and their validation logic.\n"
        "Each TextFormField widget represents an input field for Name, Email, and Password.\n\n"
        "1. TextFormField for 'Name':\n"
        "- The decoration property provides visual customization for the input field, such as labelText, hintText, prefixIcon, and border.\n"
        "- The keyboardType property specifies the input type as TextInputType.text.\n"
        "- The validator property defines a validation function that checks if the value is empty and returns an error message if needed.\n\n"
        "2. TextFormField for 'Email':\n"
        "- Similar to the first TextFormField, this input field collects the user's email address.\n"
        "- The keyboardType property is set to TextInputType.emailAddress.\n\n"
        "3. TextFormField for 'Password':\n"
        "- This input field collects the user's password with an obscureText property set to true for password masking.\n"
        "- The validator checks for an empty password field.\n\n"
        "An ElevatedButton with the label 'Submit' is provided.\n"
        "1. onPressed Callback:\n"
        "- When the button is pressed, the _formKey's current state is validated using _formKey.currentState!.validate().\n"
        "- If all validation functions return null, indicating valid input, a SnackBar is displayed using ScaffoldMessenger.\n"
        "- The SnackBar indicates that the form has been successfully submitted.\n\n"
        "The SingleChildScrollView ensures that the form remains scrollable when the keyboard is active, preventing overflow issues.\n"
        "The form layout includes text input fields for Name, Email, and Password, and a submit button that triggers form validation and submission.\n"
        "The usage of TextFormField simplifies the process of creating text input fields with built-in validation and visual customization.\n\n",
  ),
];

// ignore: non_constant_identifier_names
List<Section> K2sectionData = [
  Section(
    id: 's1',
    category: 'cat2',
    title: 'List Tile',
    subtitle: 'Enhanced List Tile Showcase',
    imagePath: 'imagePath',
    sourceFilePath: '/list_listtile_ex',
    description: '''
Explore an enhanced version of the popular ListTile widget in Flutter with this code example. The code demonstrates a variety of tile configurations, each showcasing different features for building dynamic and informative user interfaces. 

Highlights:
- Basic Tile: A simple tile with a single title.
- Tile with Leading/Trailing Icons: Utilizes icons to add context.
- Custom Title Tile: Personalized tile with a custom title and a subtitle.
- Multiline Tile: Includes a multiline subtitle for detailed information.
- Compact Tile: Uses the 'dense' property for a more condensed appearance.
- Tile with Chip Badge: Employs the Chip widget for badge functionality.

The app displays an AppBar titled "Enhanced List Tile Showcase" and a detailed description of the showcased features. The body presents the EnhancedListTileExample, providing a hands-on experience of the tile variations.
''',
  ),
  Section(
    id: 's2',
    category: 'cat2',
    title: 'Dismissible List View builder ',
    subtitle: 'Interactive Deletion , Swipe to dismiss ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_listviewbuilder_ex',
    description: '''
Explore an Enhanced Dismissible List in Flutter with this code example. The code showcases the integration of the 'Dismissible' widget, allowing users to interactively delete items from a list. Let's delve into the details:

The Code:
The 'ListViewBuilderEx' class introduces a revamped list of items, each now equipped with dismissible functionality. The user can swipe left on each item to reveal a red background along with a delete icon, enabling easy removal of items from the list. Additionally, an edit icon has been included to provide an alternative action option.

Code Highlights:
- Dismissible Functionality: Each list item is wrapped in the 'Dismissible' widget, enabling swipe-to-dismiss behavior.
- Custom Dismiss Direction: Items are dismissed by swiping from right to left.
- Deletion Handler: The 'onDismissed' callback handles item deletion. Implement your code within this callback to manage item removal from your data source.
- Visual Indicators: Deleted items display a red background and a delete icon for clarity.
- Edit Option: The edit icon allows users to choose an alternative action besides deletion.

Usage:
To experiment with this code, run the app, titled 'Enhanced Dismissible List Example'. Observe how each list item responds to swipes, providing options for both deletion and editing. Experiment with the 'onDismissed' callback to tailor the behavior according to your application's requirements.

This code offers a practical example of integrating interactive elements into your Flutter applications, enhancing user engagement and experience when dealing with lists of data.
''',
  ),
  Section(
    id: 's3',
    category: 'cat2',
    title: 'Grid View builder ',
    subtitle: 'Dynamic Grid with Icons and Text',
    imagePath: 'imagePath',
    sourceFilePath: '/list_gridview_ex',
    description: '''
**Dynamic Iconic Grid View**

This code example demonstrates the implementation of a dynamic and visually appealing grid layout using Flutter's GridView.builder. The provided 'GridViewEx' class generates a grid of items, each comprising an icon, text, and a distinct background color. Let's delve into the details:

**Code Overview:**
The heart of this implementation lies in the 'GridView.builder' widget, which efficiently creates scrollable grid views. In this scenario, the grid displays 10 items with a fixed cross-axis count of 2, resulting in 2 columns. The layout configuration, specified by 'SliverGridDelegateWithFixedCrossAxisCount', determines the spacing between the items.

Each grid item is encapsulated within a 'Container'. The background color of each container is dynamically generated based on the item's index, producing a visually appealing gradient-like effect. Within the container, a 'Column' widget is utilized to vertically align the icon and text components.

**Icon and Text Components:**
- A prominent 'Icon' widget is situated at the center of each grid item. The icon chosen is a star icon, boasting a size of 50 and a bright amber color scheme.
- Just beneath the icon, a 'Text' widget presents a label in the form of "Item X", where X signifies the item's index. The text is centered within the column and adheres to a font size of 16.

**Background Color Variation:**
The allure of the grid items stems from the gradient-like appearance facilitated by assigning distinctive background colors based on the index. The 'Colors.blue' palette is harnessed for this purpose, contributing to the visually pleasing aesthetic of the grid.

**Implementing the GridView:**
The 'GridView.builder' widget is pivotal for rendering the grid. It necessitates specifying the total 'itemCount' (10 in this instance) and furnishing a builder function responsible for constructing each individual item. This function receives the 'context' and 'index', affording customization based on the item's position.

**Main Function and App Structure:**
The code can be executed using the 'main' function. By initializing a 'MaterialApp', the code establishes a familiar user interface structure. The 'GridViewEx' is presented within the body of a 'Scaffold', enabling users to interactively explore the dynamic and captivating grid layout.

In summation, this code example serves as a practical demonstration of how to craft visually engaging grid layouts enriched with icons and descriptive text through the use of Flutter's 'GridView.builder'. It serves as a foundation for crafting versatile user interfaces, ranging from captivating image galleries to informative product displays.
''',
  ),
  Section(
    id: 's4',
    category: 'cat2',
    title: 'ExpansionTile ',
    subtitle: 'Nested ExpansionTile List ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_expansiontile_ex',
    description: '''
**Nested ExpansionTile List**

This code example demonstrates the utilization of nested ExpansionTile widgets in Flutter. It showcases the creation of hierarchical content using ExpansionTile to create collapsible and expandable sections within a list. Let's explore the details:

**Code Overview:**
The 'ExpansionTileEx' class establishes a ListView populated with ExpansionTile widgets. Each ExpansionTile represents a category, and its children are either subcategories or individual list items.

**Nested Structure:**
- Categories A, B, and C are represented by top-level ExpansionTile widgets.
- Category A has subcategories A1 and individual items (A2, A3).
- Subcategory A1 contains two list items (Item A1.1, Item A1.2).
- Categories B and C have individual list items (B1, B2, C1, C2).

**User Interaction:**
The ExpansionTile widgets enable users to expand and collapse categories, revealing or hiding the underlying content.

**Application Scenarios:**
This pattern is particularly useful for crafting navigation menus, content organization, or presenting data in a structured manner. It helps maintain a clutter-free UI by allowing users to access content based on their interests.

**Main Function and App Structure:**
The 'main' function initializes the app with an AppBar and a Scaffold containing the 'ExpansionTileEx' widget. Users can explore the nested categories and items within the expandable list.

In summary, this example provides insights into creating nested ExpansionTile widgets to build organized, interactive, and collapsible content sections in your Flutter applications.
''',
  ),
    Section(
    id: 's5',
    category: 'cat2',
    title: 'Reorderable List ',
    subtitle: 'Interactive List Reordering ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_reorderablelist_ex',
    description: '''
**Reorderable List Example**

This Flutter code example introduces the concept of creating an interactive list with reordering capabilities using the 'ReorderableListView' widget. The 'ReorderableListEx' class showcases a simple user interface where users can reorder the list items as per their preference. Let's explore the details:

**Code Overview:**
The 'ReorderableListEx' class is a 'StatefulWidget' that produces a 'ReorderableListView' widget. This list contains a set of 'ListTile' widgets, each representing an item.

**List Reordering:**
Users can effortlessly reorder the list items by dragging and dropping them. The 'onReorder' callback responds to the user's actions and rearranges the items accordingly within the list.

**Item Representation:**
- Each 'ListTile' is equipped with a 'ValueKey' to maintain item identity during reordering.
- The 'title' property of the 'ListTile' displays the item's label.
- The 'trailing' property includes an icon depicting a drag handle, providing a visual cue for reordering.

**User Interaction:**
Users can tap and hold on an item to activate the reordering mechanism. They can then drag the item to the desired position within the list.

**Main Function and App Structure:**
The 'main' function initializes the app with an 'AppBar' and a 'Scaffold' containing the 'ReorderableListEx' widget. Users can engage with the reordering feature within the interactive list.

In summary, this example illustrates how to enable dynamic list reordering within a Flutter application using the 'ReorderableListView' widget. It serves as a foundation for creating user-friendly interfaces where users can effortlessly prioritize and arrange items according to their preferences.
''',
  ),
    Section(
    id: 's6',
    category: 'cat2',
    title: 'ListWheelView',
    subtitle: 'Visual Scrolling with ListWheelView ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_listwheelview_ex',
    description: '''
**ListWheelView Example**

This Flutter code example showcases the implementation of a visually distinct scrolling experience using the 'ListWheelView' widget. The 'ListWheelViewEx' class demonstrates how to create a scrollable list with unique visual properties. Let's delve into the details:

**Code Overview:**
The 'ListWheelViewEx' class employs the 'ListWheelScrollView.useDelegate' widget to craft a scrollable list with a distinctive appearance. This widget is particularly suitable for scenarios where visual distinctiveness is desired, such as selecting items or displaying content in a carousel-like manner.

**Visual Characteristics:**
- 'itemExtent' is set to control the height of each list item.
- 'diameterRatio' adjusts the curvature of the list, impacting its visual appearance.
- 'physics' property employs 'FixedExtentScrollPhysics()' to maintain fixed scrolling behavior.

**Item Representation:**
- Each list item is presented using a 'ListTile' with a 'CircleAvatar' as its leading element.
- The 'CircleAvatar' displays the item index within a colored background.
- The 'title' and 'subtitle' properties provide a title and description for each item.
- A trailing icon adds a visual cue for additional interaction.

**User Interaction:**
Users can engage with the 'ListWheelView' by scrolling it, which provides a distinct and engaging scrolling experience.

**Main Function and App Structure:**
The 'main' function initializes the app, and the 'ListWheelViewEx' widget is placed within a 'Scaffold' for presentation. This allows users to experience the unique visual scrolling within the app.

In summary, this example exemplifies the utilization of 'ListWheelView' to create scrollable lists with unique visual properties. It's well-suited for instances where aesthetic appeal and interactive scrolling are key requirements.
''',
  ),
      Section(
    id: 's7',
    category: 'cat2',
    title: 'Slidable List Tile ',
    subtitle: 'Learn how to implement slideable actions and dismissible tiles using the flutter_slidable package ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_slideabletile_ex',
    description: """
In this example, the flutter_slidable package is used to showcase various ways of creating interactive slideable and dismissible actions within a ListView. This demonstrates the flexibility of the package for adding swipe-based actions to list items.

1. Slideable Actions: The example demonstrates different sliding motions using DrawerMotion, BehindMotion, ScrollMotion, and StretchMotion. You can swipe the list tiles left or right to reveal corresponding actions like archiving, sharing, and more.

2. Dismissible Tile: A special case of slideable action is demonstrated using DismissiblePane. You can swipe right to archive a list tile and swipe left to delete it. A confirmation dialog is shown when archiving a tile, allowing you to confirm or cancel the action.

3. ActionPane and SlidableAction: The ActionPane widget configures the sliding motion, and SlidableAction defines the appearance and behavior of each action. Main and secondary actions are defined for both sides of the sliding action.

4. SnackBar Feedback: A SnackBar is displayed when an action is triggered, giving feedback to the user.

This example provides a hands-on experience with slideable actions and dismissible tiles, which are common patterns for managing actions in a list view.
""",
  ),
     Section(
    id: 's8',
    category: 'cat2',
    title: 'Data Table ',
    subtitle: 'Creating Interactive DataTable with Checkboxes in Flutte ',
    imagePath: 'imagePath',
    sourceFilePath: '/list_datatable_ex',
    description: '''
The DataTableEx class showcases the usage of the DataTable widget in Flutter, enhanced with interactive checkboxes to provide user-controlled data selection. The primary purpose of this example is to display tabular data in a readable and organized manner, allowing users to interact with each row's checkbox.

In the initState method, the code initializes the rows list, which defines the data for each row of the table. Each row is represented by a DataRow widget, and each cell within a row is represented by a DataCell widget. For the first three columns (First Name, Last Name, and Age), simple Text widgets display the data.

The fourth column, labeled "Select," contains a Checkbox widget. By utilizing the onChanged callback of the Checkbox, users can toggle the checkbox state. This interaction is managed by the setState method, which rebuilds the widget tree and updates the displayed content accordingly. When a checkbox is toggled, the corresponding DataRow cell is updated to display the new checkbox state.

The DataTable widget is enclosed in a SingleChildScrollView with horizontal scrolling, ensuring that the table remains readable even if the content exceeds the screen width.

In summary, the DataTableEx example demonstrates how to create a user-friendly table with interactive checkboxes in Flutter. This approach is useful for scenarios where users need to select or mark specific rows of data. By combining the power of DataTable with interactive widgets like checkboxes, developers can create versatile and engaging user interfaces for data representation and selection.
''',
  ),
       Section(
    id: 's9',
    category: 'cat2',
    title: ' ',
    subtitle: ' ',
    imagePath: 'imagePath',
    sourceFilePath: '/list__ex',
    description: '',
  ),
];
// ignore: non_constant_identifier_names
List<Section> K3sectionData = [
  Section(
    id: 's1',
    category: 'cat3',
    title: 'Icon',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_icon_ex',
  ),
  Section(
    id: 's2',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's3',
    category: 'cat3',
    title: 'Button',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's4',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's5',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's6',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's7',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's8',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
  Section(
    id: 's9',
    category: 'cat3',
    title: 'Text',
    subtitle: 'subtitle',
    description: 'description',
    imagePath: 'imagePath',
    sourceFilePath: '/widget_text_ex',
  ),
];
