.class Lio/fabric/sdk/android/services/settings/DefaultSettingsController;
.super Ljava/lang/Object;
.source "DefaultSettingsController.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/SettingsController;


# static fields
.field private static final LOAD_ERROR_MESSAGE:Ljava/lang/String; = "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

.field private static final PREFS_BUILD_INSTANCE_IDENTIFIER:Ljava/lang/String; = "existing_instance_identifier"


# instance fields
.field private final cachedSettingsIo:Lio/fabric/sdk/android/services/settings/CachedSettingsIo;

.field private final currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

.field private final kit:Lio/fabric/sdk/android/Kit;

.field private final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

.field private final settingsJsonTransform:Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;

.field private final settingsRequest:Lio/fabric/sdk/android/services/settings/SettingsRequest;

.field private final settingsSpiCall:Lio/fabric/sdk/android/services/settings/SettingsSpiCall;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/settings/SettingsRequest;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;Lio/fabric/sdk/android/services/settings/CachedSettingsIo;Lio/fabric/sdk/android/services/settings/SettingsSpiCall;)V
    .locals 1
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "settingsRequest"    # Lio/fabric/sdk/android/services/settings/SettingsRequest;
    .param p3, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p4, "settingsJsonTransform"    # Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;
    .param p5, "cachedSettingsIo"    # Lio/fabric/sdk/android/services/settings/CachedSettingsIo;
    .param p6, "settingsSpiCall"    # Lio/fabric/sdk/android/services/settings/SettingsSpiCall;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->kit:Lio/fabric/sdk/android/Kit;

    .line 55
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsRequest:Lio/fabric/sdk/android/services/settings/SettingsRequest;

    .line 56
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .line 57
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsJsonTransform:Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;

    .line 58
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->cachedSettingsIo:Lio/fabric/sdk/android/services/settings/CachedSettingsIo;

    .line 59
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsSpiCall:Lio/fabric/sdk/android/services/settings/SettingsSpiCall;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 61
    return-void
.end method

.method private getCachedSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;
    .locals 8
    .param p1, "cacheBehavior"    # Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    .line 105
    const-string v0, "Fabric"

    const/4 v1, 0x0

    .line 108
    .local v1, "toReturn":Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_start_0
    sget-object v2, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v2, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->cachedSettingsIo:Lio/fabric/sdk/android/services/settings/CachedSettingsIo;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/settings/CachedSettingsIo;->readCachedSettings()Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    .local v2, "settingsJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 112
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsJsonTransform:Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;

    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v3, v4, v2}, Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;->buildFromJson(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v3

    .line 115
    .local v3, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-eqz v3, :cond_2

    .line 116
    const-string v4, "Loaded cached settings: "

    invoke-direct {p0, v2, v4}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 120
    .local v4, "currentTimeMillis":J
    sget-object v6, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v6, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/settings/SettingsData;->isExpired(J)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Cached settings have expired."

    invoke-interface {v6, v0, v7}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    move-object v1, v3

    .line 123
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Returning cached settings."

    invoke-interface {v6, v0, v7}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v4    # "currentTimeMillis":J
    :goto_1
    goto :goto_2

    .line 128
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Failed to transform cached settings data."

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :goto_2
    goto :goto_3

    .line 132
    :cond_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "No cached settings data found."

    invoke-interface {v3, v0, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2    # "settingsJson":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    goto :goto_4

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Failed to get cached settings"

    invoke-interface {v3, v0, v4, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v1
.end method

.method private logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 143
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fabric"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method buildInstanceIdentifierChanged()Z
    .locals 3

    .line 163
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->getStoredBuildInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "existingInstanceIdentifier":Ljava/lang/String;
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->getBuildInstanceIdentifierFromContext()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "currentInstanceIdentifier":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method getBuildInstanceIdentifierFromContext()Ljava/lang/String;
    .locals 3

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStoredBuildInstanceIdentifier()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;
    .locals 1

    .line 64
    sget-object v0, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->USE_CACHE:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    return-object v0
.end method

.method public loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;
    .locals 5
    .param p1, "cacheBehavior"    # Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    .line 68
    const/4 v0, 0x0

    .line 75
    .local v0, "toReturn":Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->buildInstanceIdentifierChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->getCachedSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1

    move-object v0, v1

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsSpiCall:Lio/fabric/sdk/android/services/settings/SettingsSpiCall;

    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsRequest:Lio/fabric/sdk/android/services/settings/SettingsRequest;

    invoke-interface {v1, v2}, Lio/fabric/sdk/android/services/settings/SettingsSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/SettingsRequest;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, "settingsJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->settingsJsonTransform:Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;

    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v2, v3, v1}, Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;->buildFromJson(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v2

    move-object v0, v2

    .line 85
    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->cachedSettingsIo:Lio/fabric/sdk/android/services/settings/CachedSettingsIo;

    iget-wide v3, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->expiresAtMillis:J

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/services/settings/CachedSettingsIo;->writeCachedSettings(JLorg/json/JSONObject;)V

    .line 86
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v1, v2}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->logSettings(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->getBuildInstanceIdentifierFromContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->setStoredBuildInstanceIdentifier(Ljava/lang/String;)Z

    .line 94
    .end local v1    # "settingsJson":Lorg/json/JSONObject;
    :cond_1
    if-nez v0, :cond_2

    .line 95
    sget-object v1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->getCachedSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 100
    :cond_2
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method setStoredBuildInstanceIdentifier(Ljava/lang/String;)Z
    .locals 2
    .param p1, "buildInstanceIdentifier"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    return v1
.end method
