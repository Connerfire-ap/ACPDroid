.class Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;
.super Ljava/lang/Object;
.source "AdvertisingInfoServiceStrategy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/AdvertisingInfoStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;,
        Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    }
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SERVICES_INTENT:Ljava/lang/String; = "com.google.android.gms.ads.identifier.service.START"

.field public static final GOOGLE_PLAY_SERVICES_INTENT_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final GOOGLE_PLAY_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    .locals 9

    .line 49
    const-string v0, "Could not bind to Google Play Service to capture AdvertisingId"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Fabric"

    if-ne v1, v2, :cond_0

    .line 50
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "AdvertisingInfoServiceStrategy cannot be called on the main thread"

    invoke-interface {v0, v4, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v3

    .line 56
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.android.vending"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    nop

    .line 72
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;

    invoke-direct {v1, v3}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;-><init>(Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$1;)V

    .line 73
    .local v1, "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.google.android.gms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :try_start_1
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    .line 78
    :try_start_2
    new-instance v5, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 80
    .local v5, "adInterface":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;
    new-instance v6, Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->isLimitAdTrackingEnabled()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Lio/fabric/sdk/android/services/common/AdvertisingInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    iget-object v7, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v6

    .end local v5    # "adInterface":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 82
    :catch_0
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Exception in binding to Google Play Service to capture AdvertisingId"

    invoke-interface {v6, v4, v7, v5}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    nop

    .line 87
    goto :goto_1

    :goto_0
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .end local v1    # "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    throw v5

    .line 90
    .restart local v1    # "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    :goto_1
    goto :goto_2

    .line 93
    :catchall_1
    move-exception v5

    .line 94
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    invoke-interface {v6, v4, v0, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v3

    .line 63
    .end local v1    # "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Unable to determine if Google Play Services is available"

    invoke-interface {v1, v4, v2, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-object v3

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Unable to find Google Play Services package name"

    invoke-interface {v1, v4, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v3
.end method
