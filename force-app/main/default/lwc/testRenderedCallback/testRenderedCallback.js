import { LightningElement } from 'lwc';

export default class TestRenderedCallback extends LightningElement {

    renderedCallback(){
        console.log('INSIDE renderedCallback!');
    }

}