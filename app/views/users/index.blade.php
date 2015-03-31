@extends('layouts.users')
@section('main')

<h1>All Users</h1>

<p>{{ link_to_route('users.create', 'Add new user') }}</p>

@if ($users->count())
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Username</th>
				<th>Password</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Name</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($users as $userRow)
                <tr>
					<td>{{ $userRow->username }}</td>
					<td>{{ $userRow->password }}</td>
					<td>{{ $userRow->email }}</td>
					<td>{{ $userRow->phone }}</td>
					<td>{{ $userRow->name }}</td>
                    <td>{{ link_to_route('users.edit', 'Edit',
 array($userRow->id), array('class' => 'btn btn-info')) }}</td>
                    <td>
					{{ Form::open(array('method'=>'DELETE','route'=>array('users.destroy', $userRow->id))) }}                       
                    
					{{ Form::submit('Delete', array('class'=> 'btn btn-danger')) }}
                        {{ Form::close() }}
                    </td>
                </tr>
            @endforeach
              
        </tbody>
      
    </table>
@else
    There are no users
@endif

@stop