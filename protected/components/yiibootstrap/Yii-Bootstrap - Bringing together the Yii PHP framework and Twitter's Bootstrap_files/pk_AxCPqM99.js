/*!CK:587200145!*//*1380040184,177644826*/

if (self.CavalryLogger) { CavalryLogger.start_js(["Sat2d"]); }

__d("EntStreamGroupMall",["DOM","$"],function(a,b,c,d,e,f){var g=b('DOM'),h=b('$'),i={replacePager:function(j){g.setContent(h('pagelet_group_pager'),j);},replaceFilesPager:function(j,k){g.setContent(h('group_files_pager_'+k),j);}};e.exports=i;});
__d("GroupMall",["Animation","Arbiter","DOM","LiveTimer","NavigationMessage","Run","copyProperties","ge"],function(a,b,c,d,e,f){var g=b('Animation'),h=b('Arbiter'),i=b('DOM'),j=b('LiveTimer'),k=b('NavigationMessage'),l=b('Run'),m=b('copyProperties'),n=b('ge'),o={};m(o,{init:function(p,q){this._mallNode=n('group_mall_'+p);if(!this._mallNode)return;this._composerPublishToken=h.subscribe('composer/publish',function(event,r){if(r.composer_id===q&&r.streamStory&&!n(r.streamStory.id))this._addPostToUI(r.streamStory);}.bind(this));l.onLeave(this._onleave.bind(this));this._navigationBeginToken=h.subscribe(k.NAVIGATION_BEGIN,this._onleave.bind(this));},_onleave:function(){this._navigationBeginToken.unsubscribe();this._composerPublishToken.unsubscribe();},_addPostToUI:function(p){var q=this._mallNode.firstChild;i.insertAfter(q,p);var r=this._mallNode.firstChild;j.startLoop(0);new g(r).from('opacity',0).to('opacity',1).duration(300).go();}});e.exports=o;});
__d("RequiredFormListener",["Event","Input"],function(a,b,c,d,e,f){var g=b('Event'),h=b('Input');g.listen(document.documentElement,'submit',function(i){var j=i.getTarget().getElementsByTagName('*');for(var k=0;k<j.length;k++)if(j[k].getAttribute('required')&&h.isEmpty(j[k])){j[k].focus();return false;}},g.Priority.URGENT);});
__d("highlight",["Animation","Style"],function(a,b,c,d,e,f){var g=b('Animation'),h=b('Style');function i(j,k,l){new g(j).from('background','#fff9d7').to('background',l||'#fff').ease(g.ease.both).duration(2000).ondone(function(){h.set(j,'background','');k&&k();}).go();}i.highlight=i;e.exports=i;});
__d("ScrollHighlight",["DOMScroll","highlight"],function(a,b,c,d,e,f){var g=b('DOMScroll'),h=b('highlight'),i={actOn:function(j,k){g.scrollTo(j);h(j,null,k);}};e.exports=i;});