<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {!! __('Pinjam &raquo; Create') !!}
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
                <form class="w-full" action="{{ url('/pinjam/store') }}" method="post">
                    @csrf
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                ID Anggota
                            </label>
                            <input value="{{ old('id_anggota') }}" name="id_anggota"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="text" placeholder="Masukan ID">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                ID Buku
                            </label>
                            <input value="{{ old('id_buku') }}" name="id_buku"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="number" placeholder="Masukan id buku">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                Tanggal Pinjam
                            </label>
                            <input value="{{ old('tgl_pinjam') }}" name="tgl_pinjam"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="date" placeholder="Tatnggal">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                Tanggal kembali
                            </label>
                            <input value="{{ old('tgl_kembali') }}" name="tgl_kembali"
                                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200rounded py-3 px-4 leading-tight focus:outline-none focus:bg-whitefocus:border-gray-500"
                                id="grid-last-name" type="date" placeholder="Tanggal">
                        </div>
                    </div>
                    <!-- <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700text-xs font-bold mb-2"
                                for="grid-last-name">
                                Password Confirmation
                            </label>
                            <input value="{{ old('password_confirmation') }}" name="password_confirmation"
                                class="appearance-none block w-full bg-gray-200text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tightfocus:outline-none focus:bg-white focus:border-gray-500"
                                id="grid-last-name" type="password" placeholder="User Password Confirmation">
                        </div>
                    </div> -->
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
