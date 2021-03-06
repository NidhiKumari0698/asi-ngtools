import { Directive, Input, ContentChild } from '@angular/core';
import { AsiComponentTemplateCellDef } from '../common/asi-component-template';

@Directive({
  // tslint:disable-next-line:directive-selector
  selector: 'asi-table-inliner',
})
export class AsiTableInliner {

  @Input() colSpan: number;
  @ContentChild(AsiComponentTemplateCellDef) cellDef: AsiComponentTemplateCellDef;

}
