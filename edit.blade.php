<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Prodi &raquo; {{ $item->name ?? 'Edit' }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div>
                @if ($errors->any())
                    <!-- Error handling -->
                @endif
                <form class="w-full" action="{{ url('/prodi/update/' . $item->id) }}" method="post">
                    @csrf
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="nama_prodi">
                                Prodi
                            </label>
                            <input value="{{ old('nama_prodi') ?? $item->nama_prodi }}" name="nama_prodi" id="nama_prodi" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" placeholder="Nama Prodi">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="nama_fakultas">
                                Fakultas
                            </label>
                            <input value="{{ old('nama_fakultas') ?? ($item->fakultas ? $item->fakultas->nama_fakultas : '') }}" name="nama_fakultas" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="nama_fakultas" type="text" placeholder="{{ $item->fakultas ? ($item->fakultas->nama_fakultas ? '' : 'Enter Fakultas Name') : 'Fakultas Not Set' }}">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full px-3 text-right">
                            <button type="submit" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                                Update Prodi
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
