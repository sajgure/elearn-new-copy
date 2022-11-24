<style type="text/css">
    .btn-group.open .dropdown-toggle {box-shadow: none; } .multiselect-selected-text{float: left; } .caret{margin-top: 8px; float: right; }
</style>
<form action="save_user_time"  id="popup_save" class="horizontal-form" method="post" >
    <div class="form-body">  
        <div class="row">
            <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">SELECT STUDENT<span class="required" aria-required="true">*</span></label>
                            <div class="input-icon "><i class="fa"></i>
                                <select class="mt-multiselect multiselect form-control"  name="student_id[]" id="student_name" multiple="multiple" data-label="left" data-select-all="true" data-width="100%" data-filter="true" data-action-onchange="true" data-height="300">
                                     <?php if(isset($student_data) && !empty($student_data))
                                    { 
                                        foreach($student_data AS $key)
                                        { ?> 
                                            
                                        <option value="<?php echo (isset($key->stud_id) && !empty($key->stud_id))?$key->stud_id:'';?>"> <?php echo $key->stud_name.' '.$key->stud_last_name;?> (<?php echo $key->course_name;?>) </option>
                                        <?php } 
                                    }?>
                                </select>
                            </div>
                        </div>
                    </div>
                   <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">SELECT TIME<span class="required" aria-required="true">*</span></label>
                            <select class="form-control select2" name="set_time" id="" > 
                                <option value="30">30 MIN (30 min) </option>
                                <option value="60">60 MIN (1 hr) </option>
                                <option value="75">75 MIN (1 hr,15 min) </option>
                                <option value="90">90 MIN (1 hr,30 min) </option>
                                <option value="105">105 MIN (1 hr,45 min) </option>
                                <option value="120">120 MIN (2 hr) </option>
                                <option value="135">135 MIN (2 hr,15 min) </option>
                                <option value="150">150 MIN (2 hr,30 min) </option>
                                <option value="165">165 MIN (2 hr,45 min) </option>
                                <option value="180">180 MIN (3 hr) </option>
                                <option value="600">MORE THAN 3 hr </option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>                         
       </div>
    </div>
</form>              




