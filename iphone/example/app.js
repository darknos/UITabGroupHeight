// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
//
var uitabgroupheight = require('su.ipublisher.tab.group.height');

uitabgroupheight.setTabHeight(200);

Ti.API.info("module is => " + uitabgroupheight);

var win1 = Ti.UI.createWindow({
    backgroundColor: 'blue',
    title: 'Blue'
});
win1.add(Ti.UI.createLabel({text: 'I am a blue window.'}));

var win2 = Ti.UI.createWindow({
    backgroundColor: 'red',
    title: 'Red'
});
win2.add(Ti.UI.createLabel({text: 'I am a red window.'}));

var win3 = Ti.UI.createWindow({
                              backgroundColor: 'white',
                              title: 'List Editing'
                              });

var tab1 = Ti.UI.createTab({
    window: win1,
    title: 'Blue'
}),
tab2 = Ti.UI.createTab({
    window: win2,
    title: 'Red'
}),
tab3 = Ti.UI.createTab({
                       window: win3,
                       title: 'List'
                       }),
tabGroup = Ti.UI.createTabGroup({
    tabs: [tab1, tab2, tab3]
});




var listView = Ti.UI.createListView();
var sections = [];

var fruitSection = Ti.UI.createListSection({ headerTitle: 'Fruits'});
var fruitDataSet = [
                    {properties: { title: 'Apple', canEdit: true}, canEdit: true},
                    {properties: { title: 'Banana', canEdit: true}, canEdit: true},
                    ];
fruitSection.setItems(fruitDataSet);
sections.push(fruitSection);


listView.sections = sections;

listView.AllowsSelectionDuringEditing = true;
listView.editing = true;

listView.addEventListener("itemclick", function(e){
                          console.log(e);
                          })

win3.add(listView);
var btn = Ti.UI.createButton({title:"Edit"});
win3.rightNavButton = btn;

btn.addEventListener("click", function(e){
listView.editing = !listView.editing;
});

tabGroup.open();