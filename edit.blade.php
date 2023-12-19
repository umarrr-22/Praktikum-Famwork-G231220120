<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Anggota &raquo; {{ $item->name }} &raquo; Edit
        </h2>
    </x-slot>
    <head>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
      
    </head>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div>
                @if ($errors->any())
                    <div class="mb-5" role="alert">
                        <div class="bg-red-500 text-white font-bold rounded-t px-4py-2">
                            There's something wrong!
                        </div>
                        <div class="border border-t-0 border-red-400 rounded-bbg-red-100 px-4 py-3 text-red-700">
                            <p>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                            </p>
                        </div>
                    </div>
                @endif
                <form class="w-full" action="{{ url('/anggota/update/' . $item->id_anggota) }}" method="post">
                    @csrf
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                NIM
                            </label>
                            <input value="{{ old('nim') ?? $item->nim }}" name="nim"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 borderborder-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="text" placeholder="edit nim">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                Nama
                            </label>
                            <input value="{{ old('nama') ?? $item->nama }}" name="nama"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 borderborder-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="text" placeholder="Edit nama">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                Prodi
                            </label>
                            <input value="{{ old('prodi') ?? $item->prodi }}" name="prodi"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 borderborder-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="text" placeholder="edit prodi">
                        </div>
                    </div>
                   
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3 text-right">
                        <button type="submit"
                                class="bg-green-500 hover:bg-green700 text-white font-bold py-2 px-4 rounded">
                                <i class="fas fa-save"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>