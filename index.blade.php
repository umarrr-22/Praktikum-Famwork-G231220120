<x-app-layout>
    <x-slot name="header">
        
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Pinjam') }}
        </h2>
    </x-slot>
    <head>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="mb-6">
                <a href="{{ url('/pinjam/create') }}" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                    + Create data 
                </a>
            </div>

            <div class="bg-white overflow-x-auto">
                <table class="min-w-full border-collapse">
                    <thead>
                        <tr>
                            <th class="border px-4 py-2">Anggota</th>
                            <th class="border px-4 py-2">Buku</th>
                            <th class="border px-4 py-2">Tanggal pinjam</th>
                            <th class="border px-4 py-2">Tanggal kembali</th>
                          
                            <th class="border px-4 py-2">Actions</th> 
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($items as $item)
                        <tr>
                            <td class="border px-4 py-2">{{ $item->id_anggota }}</td>
                            <td class="border px-4 py-2">{{ $item->id_buku }}</td>
                            <td class="border px-4 py-2">{{ $item->tgl_pinjam }}</td>
                            <td class="border px-4 py-2">{{ $item->tgl_kembali }}</td>
                           
                            <td class="border px-2 py-2 text-center" id="tombol">
    <a href="{{ url('/pinjam/edit/'.$item->id_pinjam) }}" class="inline-block bg-blue-500 hover:bg-blue-400 text-white font-bold py-1 px-2 mx-1 rounded">
        <i class="fas fa-pencil-alt"></i>
    </a>
    <form action="{{ url('/pinjam/destroy/'.$item->id_pinjam) }}" method="POST" class="inline-block">
        @csrf
        <button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 mx-1 rounded inline-block" onclick="return confirm('Are you sure?')">
            <i class="fas fa-trash-alt"></i>
        </button>
    </form>
</td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="6" class="border text-center p-5">
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
