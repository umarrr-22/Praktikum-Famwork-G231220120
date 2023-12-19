<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Anggota') }}
        </h2>
    </x-slot>
    <head>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="mb-6">
                <a href="{{ url('/anggota/create') }}" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                    + Tambah Data 
                </a>
            </div>

            <div class="bg-white overflow-x-auto">
                <table class="min-w-full border-collapse">
                    <thead>
                        <tr>
                           
                            <th class="border px-4 py-2">Nim</th>
                            <th class="border px-4 py-2">Nama</th>
                            <th class="border px-4 py-2">Prodi</th>
                            <th class="border px-4 py-2">Aksi</th> 
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($items as $item)
                            <tr>
                              
                                <td class="border px-4 py-2">{{ $item->nim }}</td>
                                <td class="border px-4 py-2">{{ $item->nama }}</td>
                                <td class="border px-4 py-2">{{ $item->prodi }}</td>
                                <td class="border px-2 py-2 text-center" id="tombol">
                                    <a href="{{ url('/anggota/edit/'.$item->id_anggota) }}" class="inline-block bg-blue-500 hover:bg-blue-400 text-white font-bold py-1 px-2 mx-1 rounded">
                                        <i class="fas fa-pencil-alt"></i>
                                    </a>
                                    <form action="{{ url('/anggota/destroy/'.$item->id_anggota) }}" method="POST" class="inline-block">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 mx-1 rounded inline-block" onclick="return confirm('Anda yakin?')">
                                            <i class="fas fa-trash-alt"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5" class="border text-center p-5">
                                    Data Tidak Ditemukan
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            <div class="text-center mt-5">
                {{ $items->links() }}
            </div>
        </div>
    </div>
</x-app-layout>
