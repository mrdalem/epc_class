part of 'pages.dart';


// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

/// This is the stateful widget that the main application instantiates.
class Accordion extends StatefulWidget {
  Accordion({Key key}) : super(key: key);

  @override
  _AccordionState createState() => _AccordionState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _AccordionState extends State<Accordion> {
  List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: _buildPanel(),
        ),
      ],
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Container(
            color: Colors.grey,
            child: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),

            ),
          ),
          isExpanded: item.isExpanded,
          canTapOnHeader: item.isExpanded
        );
      }).toList(),
    );
  }
}
