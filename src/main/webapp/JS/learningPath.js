/**
 * 
 */


const { 
  fundamentals, 
  fundamentals_read, 
  oops,
  oops_read, 
  exception,
  exception_read,
  multithreading,
  multithreading_read,
  innerclass,
  innerclass_read,
  lang,
  lang_read,
  files,
  files_read,
  serialization,
  serialization_read,
  collections,
  collections_read,
  generics,
  generics_read,
  gbcollector,
  gbcollector_read
} = jsonData;







let emptyArrayCount = 0;

for (let key in jsonData) {
  if (Array.isArray(jsonData[key]) && jsonData[key].length === 0) {
    emptyArrayCount++;
  }
}

let completedTuts = 0;
if(fundamentals.length === fundamentals_read.length){
	completedTuts++;
}
if(oops.length === oops_read.length){
	completedTuts++;
}
if(exception.length === exception_read.length){
	completedTuts++;
}
if(multithreading.length === multithreading_read.length){
	completedTuts++;
}
if(innerclass.length === innerclass_read.length){
	completedTuts++;
}
if(lang.length === lang_read.length){
	completedTuts++;
}
if(files.length === files_read.length){
	completedTuts++;
}
if(serialization.length === serialization_read.length){
	completedTuts++;
}
if(collections.length === collections_read.length){
	completedTuts++;
}
if(generics.length === generics_read.length){
	completedTuts++;
}
if(gbcollector.length === gbcollector_read.length){
	completedTuts++;
}


console.log(emptyArrayCount);

const completeCount = function(notCompleteed, completed){
	const html = `
		<p>All (210)</p>
        <p>Core Java (130)</p>
        <p>Sections (11)</p>
        <p>In Progress (${(11 - notCompleteed) - completed})</p>
        <p>Not Started (${notCompleteed})</p>
        <p>Completed (${completed})</p>
	`;
	
	return html;
};


document.querySelector('.topics').insertAdjacentHTML('beforeend', completeCount(emptyArrayCount, completedTuts));





const gridContainer = document.querySelector('.tutorial-content');

const formatHTML = function(classname, name, topic, topic_read) {
	const html = `
		<div class="tutorial-card">
	       <div class="image">
	            <img src="Images/card-img.svg" alt="">
	       </div>
	       <div class="card-body">
	            <p>TUTORIAL</p>
	            <h4>Learn ${name}</h4>
	            <p><b>${topic_read}</b> of <b>${topic + topic_read}</b> lessons completed</p>
	            <p>Understanding ${name} is crucial for mastering Java programming</p>
	            <div class="percentage">
	                <h2>${Math.trunc((topic_read / (topic + topic_read))* 100)}%</h2>
	            </div>
	           <div class="slider">
	               <div class="range ${classname}-range"></div>
	           </div>
	       </div>
	    </div>
	`;
	
	return html;
}




const fundamentalsCard = formatHTML('fundamentals', 'Fundamentals', fundamentals.length, fundamentals_read.length);
gridContainer.insertAdjacentHTML('beforeend', fundamentalsCard);


const oopsCard = formatHTML('oops', 'OOPs', oops.length, oops_read.length);
gridContainer.insertAdjacentHTML('beforeend', oopsCard);


const exceptionCard = formatHTML('exception','Exception Handling', exception.length, exception_read.length);
gridContainer.insertAdjacentHTML('beforeend', exceptionCard);


const multithreadingCard = formatHTML('multithreading', 'Multithreading', multithreading.length, multithreading_read.length);
gridContainer.insertAdjacentHTML('beforeend', multithreadingCard);


const innerclassCard = formatHTML('innerclass', 'Inner Classes', innerclass.length, innerclass_read.length);
gridContainer.insertAdjacentHTML('beforeend', innerclassCard);


const langCard = formatHTML('lang', 'Lang Package', lang.length, lang_read.length);
gridContainer.insertAdjacentHTML('beforeend', langCard);


const filesCard = formatHTML('files','File Handling', files.length, files_read.length);
gridContainer.insertAdjacentHTML('beforeend', filesCard);


const serializationCard = formatHTML('serialization', 'Serialization', serialization.length, serialization_read.length);
gridContainer.insertAdjacentHTML('beforeend', serializationCard);


const collectionsCard = formatHTML('collections', 'Collection Framework', collections.length, collections_read.length);
gridContainer.insertAdjacentHTML('beforeend', collectionsCard);

const genericsCard = formatHTML('generics', 'Generics', generics.length, generics_read.length);
gridContainer.insertAdjacentHTML('beforeend', genericsCard);


const gbcollectorCard = formatHTML('gbcollector', 'Garbage Collector', gbcollector.length, gbcollector_read.length);
gridContainer.insertAdjacentHTML('beforeend', gbcollectorCard);                      


const assignStyle = function(read, unread, classname) {
	const range = document.querySelector(`.${classname}-range`);
	
	range.style.height = `100%`;
	range.style.backgroundColor = `#333`;
	range.style.borderRadius = `9999px`;
	range.style.borderTopRightRadius = `0px`;
	range.style.borderBottomRightRadius = `0px`;
	range.style.width = read === 0 ? '0%' : `${(read / unread) * 100}%`;
}


setTimeout(() => {
	
	assignStyle(fundamentals_read.length, fundamentals.length, `fundamentals`);
	
	assignStyle(oops_read.length, oops.length, `oops`);
	
	assignStyle(exception_read.length, exception.length, `exception`);
	
	assignStyle(multithreading_read.length, multithreading.length, `multithreading`);
	
	assignStyle(innerclass_read.length, innerclass.length, `innerclass`);
	
	assignStyle(lang_read.length, lang.length, `lang`);
	
	assignStyle(files_read.length, files.length, `files`);
	
	assignStyle(serialization_read.length, serialization.length, `serialization`);
	
	assignStyle(collections_read.length, collections.length, `collections`);
	
	assignStyle(generics_read.length, generics.length, `generics`);
	
	assignStyle(gbcollector_read.length, gbcollector.length, `gbcollector`);
}, 0)
