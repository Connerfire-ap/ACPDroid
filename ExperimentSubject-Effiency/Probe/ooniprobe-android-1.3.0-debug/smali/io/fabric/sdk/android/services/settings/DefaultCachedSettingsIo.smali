.class Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;
.super Ljava/lang/Object;
.source "DefaultCachedSettingsIo.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/CachedSettingsIo;


# instance fields
.field private final kit:Lio/fabric/sdk/android/Kit;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .locals 0
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    .line 42
    return-void
.end method


# virtual methods
.method public readCachedSettings()Lorg/json/JSONObject;
    .locals 7

    .line 46
    const-string v0, "Error while closing settings cache file."

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Reading cached settings..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 52
    .local v3, "toReturn":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    iget-object v6, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    invoke-direct {v5, v6}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "com.crashlytics.settings.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v4, "settingsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 57
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "settingsStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 60
    .end local v3    # "toReturn":Lorg/json/JSONObject;
    .end local v5    # "settingsStr":Ljava/lang/String;
    .local v2, "toReturn":Lorg/json/JSONObject;
    move-object v3, v2

    goto :goto_0

    .line 61
    .end local v2    # "toReturn":Lorg/json/JSONObject;
    .restart local v3    # "toReturn":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "No cached settings found."

    invoke-interface {v5, v2, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    .end local v4    # "settingsFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Failed to fetch cached settings"

    invoke-interface {v5, v2, v6, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 67
    nop

    .line 69
    return-object v3

    .line 66
    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method public writeCachedSettings(JLorg/json/JSONObject;)V
    .locals 7
    .param p1, "expiresAtMillis"    # J
    .param p3, "settingsJson"    # Lorg/json/JSONObject;

    .line 74
    const-string v0, "Failed to close settings writer."

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Writing settings to cache file..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-eqz p3, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 80
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    const-string v3, "expires_at"

    invoke-virtual {p3, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    new-instance v5, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    iget-object v6, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    invoke-direct {v5, v6}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "com.crashlytics.settings.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 84
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Failed to cache settings"

    invoke-interface {v4, v2, v5, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 90
    goto :goto_2

    .line 89
    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_2
    return-void
.end method
