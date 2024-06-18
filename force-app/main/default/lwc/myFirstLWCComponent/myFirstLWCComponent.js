import { LightningElement } from 'lwc';

export default class MyFirstLWCComponent extends LightningElement {
    fullname= 'Zero to Hero'
    concept= 'Data Binding'

    changeHandler(event){
       this.concept= event.target.value
    }
}