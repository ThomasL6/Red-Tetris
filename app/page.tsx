export default function Home() {
    return (
        <div className="min-h-screen bg-gradient-to-br from-purple-900 to-blue-900 flex items-center justify-center">
            <div className="text-center">
                <h1 className="text-6xl font-bold text-white mb-4">Red Tetris</h1>
                <p className="text-xl text-gray-300 mb-8">Jeu Tetris multijoueur en temps réel</p>
                <button className="bg-red-600 hover:bg-red-700 text-white font-bold py-3 px-6 rounded-lg transition duration-300 ease-in-out transform hover:scale-105">
                    Commencer à jouer
                </button>
            </div>
        </div>
    );
}