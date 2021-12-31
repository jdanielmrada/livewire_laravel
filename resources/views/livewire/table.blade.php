<h2>Listado de post</h2>

<table class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Titulo</th>
            <th>Componente</th>
            <th colspan="2">&nbsp;</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($posts as $post)
        <tr>
            <td>{{ $post->id }}</td>
            <td>{{ $post->title }}</td>
            <td>{{ $post->body }}</td>
            <td wire:click="edit({{ $post->id }})" class="btn btn-primary">
                Editar
            </td>
            <td wire:click="destroy({{ $post->id }})" class="btn btn-danger">
                Eliminar
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

{{ $posts->links() }}
