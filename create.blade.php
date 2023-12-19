<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {!! __('Prodi &raquo; Create') !!}
        </h2>
    </x-slot>
    
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div>
                @if ($errors->any())
                    <div class="mb-5" role="alert">
                        <div class="bg-red-500 text-white font-bold rounded-t px-4 py-2">
                            There's something wrong!
                        </div>
                        <div class="border border-t-0 border-red-400 rounded-b bg-red-100 px-4 py-3 text-red-700">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                @endif
                
                <form class="w-full" action="{{ url('/prodi/store') }}" method="post">
                    @csrf
                    <div class="mb-6">
                        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="fakultas_id">
                            Fakultas
                        </label>
                        <select name="fakultas_id" id="fakultas_id" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                            @foreach ($fakultas as $k => $v)
                                <option value="{{ $k }}">{{ $v }}</option>
                            @endforeach
                        </select>
                    </div>
                    
                    <div class="mb-6">
                        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="nama_prodi">
                            Prodi
                        </label>
                        <input value="{{ old('nama_prodi') }}" name="nama_prodi" id="nama_prodi" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" placeholder="Nama prodi">
                    </div>
                    
                    <div class="mb-6 text-right">
                        <button type="submit" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                            Save Prodi
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
