export default function hamming() {
    this.compute = function (a, b) {
        if (a.length != b.length) {
            throw new Error("DNA strands must be of equal length.")
        }

        let distance = 0
        for (let i = 0; i < a.length; i++) {
            if (a[i] != b[i]) {
                distance++
            }
        }

        return distance
    }
}
