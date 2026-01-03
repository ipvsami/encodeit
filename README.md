🔐 **Encodit — Offline Image Encryption App**

**Encodit** is an **offline-first Android application** that performs **deterministic image encryption** using a user-provided key.
The encryption process operates **directly at the pixel level**, transforming each RGB channel into a **cryptographically obfuscated form**.

✨ **Features**

* **Pixel-level image encryption**
* **Key-based deterministic encoding & decoding**
* **Fully offline — no internet required**
* **Stateless encryption (no hidden metadata)**
* **Works on any image format supported by the decoder**
* **Outputs standard image files**
* **Irreversible without the correct key**

🔬 **How It Works (High-Level)**

1. The input image is **decoded into raw pixel data**.
2. A **deterministic seed** is derived from the user-provided key.
3. A **pseudo-random sequence** is generated from the seed.
4. Each pixel’s **RGB channels are XOR-transformed** using this sequence.
5. The resulting image becomes **visually indistinguishable noise**.
6. Applying the same key **reverses the process exactly**.

Because the process is **symmetric and deterministic**, the **same key** is required for both encryption and decryption.

⚠️ **Important Usage Notes**

* **Encrypted images must be transferred as files (Document/File mode)**.
* Any form of **recompression, resizing, format change, or image optimization** will permanently break the encrypted data.
* **Sending the encrypted image as a “photo” via messengers** will render it undecryptable.
* **Loss of the encryption key results in permanent data loss**.

🛡 **Privacy & Security**

* **Encodit does not store keys, hashes, or backups**.
* **Security is enforced through simplicity and determinism**.

🧰 **Tech Stack**

* **Flutter (Dart)**
* **GetX state management**
* **ScreenUtil for responsivity**
* **No native crypto libraries (algorithm-level implementation)**

🚀 **Why This Project Exists**

**Encodit** was created as an exploration of **practical privacy tools** —
software that empowers users **without requiring trust in infrastructure**.
It is intentionally **minimal, transparent in behavior**, and **strict in its guarantees**.


📜 **Disclaimer**

This project is **not a replacement for standardized cryptographic systems** used in enterprise or military contexts.
It is designed for **educational, personal, and privacy-conscious use cases**.

