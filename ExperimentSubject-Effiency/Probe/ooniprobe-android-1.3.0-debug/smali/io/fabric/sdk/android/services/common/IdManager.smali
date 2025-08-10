.class public Lio/fabric/sdk/android/services/common/IdManager;
.super Ljava/lang/Object;
.source "IdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    }
.end annotation


# static fields
.field private static final BAD_ANDROID_ID:Ljava/lang/String; = "9774d56d682e549c"

.field public static final COLLECT_DEVICE_IDENTIFIERS:Ljava/lang/String; = "com.crashlytics.CollectDeviceIdentifiers"

.field public static final COLLECT_USER_IDENTIFIERS:Ljava/lang/String; = "com.crashlytics.CollectUserIdentifiers"

.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = "0.0"

.field private static final FORWARD_SLASH_REGEX:Ljava/lang/String;

.field private static final ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final PREFKEY_INSTALLATION_UUID:Ljava/lang/String; = "crashlytics.installation.id"


# instance fields
.field advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;

.field advertisingInfoProvider:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

.field private final appContext:Landroid/content/Context;

.field private final appIdentifier:Ljava/lang/String;

.field private final appInstallIdentifier:Ljava/lang/String;

.field private final collectHardwareIds:Z

.field private final collectUserIds:Z

.field fetchedAdvertisingInfo:Z

.field private final installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final installerPackageNameProvider:Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;

.field private final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "appInstallIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p4, "kits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    if-eqz p1, :cond_4

    .line 101
    if-eqz p2, :cond_3

    .line 104
    if-eqz p4, :cond_2

    .line 107
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/IdManager;->appIdentifier:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lio/fabric/sdk/android/services/common/IdManager;->appInstallIdentifier:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lio/fabric/sdk/android/services/common/IdManager;->kits:Ljava/util/Collection;

    .line 112
    new-instance v0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->installerPackageNameProvider:Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;

    .line 113
    new-instance v0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->advertisingInfoProvider:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    .line 115
    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    .line 117
    const-string v2, "Fabric"

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device ID collection disabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectUserIds:Z

    .line 124
    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User information collection disabled for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    return-void

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "kits must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createInstallationUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 247
    const-string v0, "crashlytics.installation.id"

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "uuid":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/IdManager;->formatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 253
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    nop

    .line 258
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private formatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 147
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private putNonNullIdInto(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V
    .locals 0
    .param p2, "idKey"    # Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .param p3, "idValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 335
    .local p1, "idMap":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 336
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    return-void
.end method

.method private removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 213
    sget-object v0, Lio/fabric/sdk/android/services/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canCollectUserIds()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectUserIds:Z

    return v0
.end method

.method public createIdHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 2

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "toReturn":Ljava/lang/String;
    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v1

    .line 325
    .local v1, "advertisingInfo":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    if-eqz v1, :cond_0

    .line 326
    iget-object v0, v1, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 330
    .end local v1    # "advertisingInfo":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    :cond_0
    return-object v0
.end method

.method declared-synchronized getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    .locals 1

    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->fetchedAdvertisingInfo:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->advertisingInfoProvider:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->fetchedAdvertisingInfo:Z

    .line 304
    .end local p0    # "this":Lio/fabric/sdk/android/services/common/IdManager;
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 3

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "toReturn":Ljava/lang/String;
    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "androidId":Ljava/lang/String;
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/IdManager;->formatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .end local v1    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->appIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstallIdentifier()Ljava/lang/String;
    .locals 4

    .line 159
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->appInstallIdentifier:Ljava/lang/String;

    .line 161
    .local v0, "appInstallId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 162
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const-string v3, "crashlytics.installation.id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/IdManager;->createInstallationUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public getBluetoothMacAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdentifiers()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "ids":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->kits:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/Kit;

    .line 279
    .local v2, "kit":Lio/fabric/sdk/android/Kit;
    instance-of v3, v2, Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;

    if-eqz v3, :cond_0

    .line 280
    move-object v3, v2

    check-cast v3, Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;

    .line 281
    .local v3, "idProvider":Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;
    invoke-interface {v3}, Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v4

    .line 283
    .local v4, "kitIds":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 284
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v0, v7, v8}, Lio/fabric/sdk/android/services/common/IdManager;->putNonNullIdInto(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    .line 285
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    goto :goto_1

    .line 287
    .end local v2    # "kit":Lio/fabric/sdk/android/Kit;
    .end local v3    # "idProvider":Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;
    .end local v4    # "kitIds":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .line 289
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/fabric/sdk/android/services/common/IdManager;->putNonNullIdInto(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    .line 290
    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/fabric/sdk/android/services/common/IdManager;->putNonNullIdInto(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    .line 292
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 4

    .line 223
    const-string v0, ""

    .line 225
    .local v0, "toReturn":Ljava/lang/String;
    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const-string v3, "crashlytics.installation.id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/IdManager;->createInstallationUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 296
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->installerPackageNameProvider:Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 4

    .line 208
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsBuildVersionString()Ljava/lang/String;
    .locals 1

    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsDisplayVersionString()Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersionString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getOsDisplayVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getOsBuildVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelephonyId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Ljava/lang/Boolean;
    .locals 3

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "toReturn":Ljava/lang/Boolean;
    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v1

    .line 312
    .local v1, "advertisingInfo":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    if-eqz v1, :cond_0

    .line 313
    iget-boolean v2, v1, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 317
    .end local v1    # "advertisingInfo":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    :cond_0
    return-object v0
.end method
