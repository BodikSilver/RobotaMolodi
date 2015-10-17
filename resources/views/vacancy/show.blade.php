@extends('app')

@section('content')


    <div class="panel panel-orange">
        <div class="panel-heading"><h2> {{$vacancy->position}} &#183; {{$vacancy->salary}} грн <span class="text-muted text-right pull-right"><h5>{{ date('j.m.Y,H:i:s', strtotime($vacancy->created_at))}}</h5></span></h2></div>
        <ul class="list-group">
            <li class="list-group-item">  <a target="_blank"href="@if($company->company_email != ''){{$company->company_email}} @else #@endif">{{$company->company_name}}</a>,{{$user->name}}  </li>
            <li class="list-group-item">  @foreach($cities as $city) {{$city->name}}<br> @endforeach</li>
            <li class="list-group-item">  {{$industry->name}}</li>
            <li class="list-group-item">
                    <button class="btn btn-default" style="background: #f48952; margin-left: 50px" onclick="PasteLink()" >Відправити URL</button>
                    <button class="btn btn-default" style="background: #f48952; margin-left: 50px" onclick="PasteFile()" >Відправити файл</button>
                    <button class="btn btn-default" style="background: #f48952; margin-left: 50px" onclick="PasteResume()">Відправити резюме</button>
            </li>

        </ul>
    </div>

    <div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px;display: none " id="linkDiv">


        {!!Form::open(['route' => 'vacancy.link'])!!}

        <h3 style="margin-top: 100px">Вставити посилання на резюме</h3>
        <div class="form-group {{$errors-> has('Link') ? 'has-error' : ''}}" style="margin-top: 30px">
            <label for="sector" class="col-sm-2 control-label">Посилання</label>
            <div class="col-sm-5">
                {!! Form::text('Link', null, array('class' => 'form-control','autocomplete'=>"off",'required')) !!}
            </div>
            <div class=" col-sm-5" name="linkError">{!! $errors->first('Link', '<span class="help-block">:message</span>') !!}</div>
            </br>
        </div>


        <div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px">
            <input type="submit" class="btn btn-default" name="btn" style="background: #a7eebe" value="Відправити посилання">
        </div>
    </div>
    {!! Form::hidden('id', $vacancy->id, array('class' => 'form-control')) !!}
    {!! Form::hidden('email', $user->email, array('class' => 'form-control')) !!}
    {!! Form::hidden('emailAddressee', $user->email, array('class' => 'form-control')) !!}
    {!!Form::token()!!}
    {!!Form::close()!!}



    <div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px;display: none " id="inputDiv">

        {!!Form::open(['route' => 'vacancy.sendFile','enctype' => 'multipart/form-data'])!!}

        <h3 style="margin-top: 100px">Завантажити файл</h3>
        <div class="form-group {{$errors-> has('Load') ? 'has-error' : ''}}" style="margin-top: 30px">
        <div class="form-group" style="margin-top: 30px">
            <label for="sector" class="col-sm-2 control-label">Завантажити файл</label>
            <div class="col-sm-5">
                {!! Form::file('Load', null, array('class' => 'form-control')) !!}
            </div>
            <div class=" col-sm-5">{!! $errors->first('Load', '<span class="help-block">:message</span>') !!}</div>
            </br>
        </div>

        {!! Form::hidden('id', $vacancy->id, array('class' => 'form-control')) !!}
        {!! Form::hidden('email', $user->email, array('class' => 'form-control')) !!}
        {!! Form::hidden('emailAddressee', $user->email, array('class' => 'form-control')) !!}
        <div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px">
            <input type="submit" class="btn btn-default" style="background: #a7eebe" value="Відправити файл">
        </div>
    </div>
        </div>
    {!!Form::token()!!}
    {!!Form::close()!!}

    <script>

        function PasteLink() {
                @if(Auth::check()){
                var linkDiv = document.getElementById('linkDiv');
                var display = linkDiv.style.display;
                var inputDisplay = document.getElementById('inputDiv').style.display;
                if (display == "block") {

                    linkDiv.style.display = "none";

                }
                else {
                    document.getElementById('inputDiv').style.display = "none";
                    linkDiv.style.display = "block";
                }
                $("input[name='Link']").keyup(function () {


                    var link = $(this).val();

                    var regexpr = new RegExp('/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/');
                    if (regexpr.test(link)) {
                        alert(" коректний урл");
                        $("input[name='Link']").removeClass('errorField');
                        $("label[for='sector']").removeClass('error');
                        $("input[name='Link']").addClass('form-control');
                        $("label[for='sector']").addClass('form-control');
                    }
                    else {
                        // alert(" No коректний урл");

                        $("input[name='Link']").removeClass('form-control');
                        $("label[for='sector']").removeClass('form-control');
                        $("input[name='Link']").addClass('errorField');
                        $("label[for='sector']").addClass('error');
                        $("div[name='linkError']").html("Будь ласка,введіть коректне посилання на резюме");
                        $("div[name='linkError']").addClass("error");

                    }

                });
            }
                @else{
                {{Redirect::to('auth/login')}}

            }
            @endif
}


            function PasteFile(){
             @if(Auth::check())
               {
                    var inputDiv = document.getElementById('inputDiv');
                    var display = inputDiv.style.display;
                    if (display == "block") {
                        inputDiv.style.display = "none";

                    }
                    else {
                        document.getElementById('linkDiv').style.display = "none";
                        inputDiv.style.display = "block";
                    }

                    $("input[name='Load']").onChange(function () {
                        var file = $(this).val();
dd(file);
                        if(file.substring(file.lastIndexOf('.')+1,file.length).toLowerCase()!='txt'||'doc')
                        {
                            alert('Необходимо выбрать файл file.txt');

                            return;
                        }



//                $(input[name='Load']).validate({
//                    rules: {
//                        file: {
//                    extension: ["jpg","png","gif"]
//                }
//            });
            }
                @else{
                {{Redirect::to('auth/login')}}
                }
            @endif
        }

            function PasteResume() {
                var inputDiv = document.getElementById('inputDiv');
                var display = inputDiv.style.display;
                if (display == "block") {
                    inputDiv.style.display = "none";

                }
                else {
                    document.getElementById('linkDiv').style.display = "none";
                    inputDiv.style.display = "block";
                }
            }


    </script>
@stop
