*** Settings ***
Resource          ../../Global/Super.robot

*** Variables ***
${Checkbox.ohrms.leavetype.box}    //div[.='US - Matternity']
${Checkbox.ohrms.leavelist}    //span[@class="oxd-text oxd-text--span"]
${Checkbox.performance.trackers.Employeebox}    //div[@class="oxd-table-card --mobile"]
${Checkbox.performance.Employeename}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div/div[7]/div/div/div[1]/div[1]/div/div/div[2]
${Checkbox.performance.trackers.Delete}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div/div[7]/div/div/div[1]/div[2]/div/div/button[1]/i
${Checkbox.performance.trackers.delete.popup}    //button[@class="oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin"]
${Checkbox.performance.addtrackerlog.Positive}    //button[@class="oxd-button oxd-button--medium oxd-button--text orangehrm-tracker-rating-button"]
