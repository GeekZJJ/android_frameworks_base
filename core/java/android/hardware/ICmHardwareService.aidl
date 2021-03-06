/**
 * Copyright (c) 2015, The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware;

import android.hardware.IThermalListenerCallback;

/** {@hide} */
interface ICmHardwareService {

    int getSupportedFeatures();
    boolean get(int feature);
    boolean set(int feature, boolean enable);

    int[] getDisplayColorCalibration();
    boolean setDisplayColorCalibration(in int[] rgb);

    int getNumGammaControls();
    int[] getDisplayGammaCalibration(int idx);
    boolean setDisplayGammaCalibration(int idx, in int[] rgb);

    int[] getVibratorIntensity();
    boolean setVibratorIntensity(int intensity);

    String getLtoSource();
    String getLtoDestination();
    long getLtoDownloadInterval();

    String getSerialNumber();

    boolean requireAdaptiveBacklightForSunlightEnhancement();
    int getThermalState();
    boolean registerThermalListener(IThermalListenerCallback callback);
    boolean unRegisterThermalListener(IThermalListenerCallback callback);

    boolean writePersistentBytes(String key, in byte[] bytes);
    byte[] readPersistentBytes(String key);

    String getUniqueDeviceId();
}
