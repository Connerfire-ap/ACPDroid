.class public Lcom/crashlytics/android/beta/DeviceTokenLoader;
.super Ljava/lang/Object;
.source "DeviceTokenLoader.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BETA_APP_PACKAGE_NAME:Ljava/lang/String; = "io.crash.air"

.field private static final DIRFACTOR_DEVICE_TOKEN_PREFIX:Ljava/lang/String; = "assets/com.crashlytics.android.beta/dirfactor-device-token="


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 70
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "name":Ljava/lang/String;
    const-string v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method getZipInputStreamOfApkFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/util/zip/ZipInputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method public bridge synthetic load(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->load(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const-string v0, "Failed to close the APK file"

    const-string v1, "Beta"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 29
    .local v2, "start":J
    const-string v4, ""

    .line 30
    .local v4, "token":Ljava/lang/String;
    const/4 v5, 0x0

    .line 35
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    const-string v6, "io.crash.air"

    invoke-virtual {p0, p1, v6}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->getZipInputStreamOfApkFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/util/zip/ZipInputStream;

    move-result-object v6

    move-object v5, v6

    .line 36
    invoke-virtual {p0, v5}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    .line 44
    if-eqz v5, :cond_0

    .line 46
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :goto_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v6

    .line 48
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    invoke-interface {v7, v1, v0, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 41
    :catch_1
    move-exception v6

    .line 42
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string v8, "Failed to read the APK file"

    invoke-interface {v7, v1, v8, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 46
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 39
    :catch_2
    move-exception v6

    .line 40
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string v8, "Failed to find the APK file"

    invoke-interface {v7, v1, v8, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_0

    .line 46
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 37
    :catch_3
    move-exception v6

    .line 38
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string v8, "Beta by Crashlytics app is not installed"

    invoke-interface {v7, v1, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 44
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v5, :cond_0

    .line 46
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 54
    .local v6, "end":J
    sub-long v8, v6, v2

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    .line 55
    .local v8, "millis":D
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Beta device token load took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v4

    .line 44
    .end local v6    # "end":J
    .end local v8    # "millis":D
    :goto_2
    if-eqz v5, :cond_1

    .line 46
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 49
    goto :goto_3

    .line 47
    :catch_4
    move-exception v7

    .line 48
    .local v7, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    invoke-interface {v8, v1, v0, v7}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    goto :goto_5

    :goto_4
    throw v6

    :goto_5
    goto :goto_4
.end method
