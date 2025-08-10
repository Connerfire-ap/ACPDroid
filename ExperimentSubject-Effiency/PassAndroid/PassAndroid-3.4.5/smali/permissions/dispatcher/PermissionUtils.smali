.class public final Lpermissions/dispatcher/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    const/16 v3, 0x10

    .line 22
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    sput-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    .line 23
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.BODY_SENSORS"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.USE_SIP"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 v0, -0x1

    sput v0, Lpermissions/dispatcher/PermissionUtils;->targetSdkVersion:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    sget v1, Lpermissions/dispatcher/PermissionUtils;->targetSdkVersion:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 142
    sget v1, Lpermissions/dispatcher/PermissionUtils;->targetSdkVersion:I

    .line 149
    :goto_0
    return v1

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 146
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v1, Lpermissions/dispatcher/PermissionUtils;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    sget v1, Lpermissions/dispatcher/PermissionUtils;->targetSdkVersion:I

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const-string v2, "Xiaomi"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-static {p0, p1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissionForXiaomi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private static hasSelfPermissionForXiaomi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "permissionToOp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Landroid/support/v4/app/AppOpsManagerCompat;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "noteOp":I
    if-nez v0, :cond_2

    invoke-static {p0, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 79
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lpermissions/dispatcher/PermissionUtils;->permissionExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    .end local v0    # "permission":Ljava/lang/String;
    :goto_1
    return v1

    .line 78
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static permissionExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v1, Lpermissions/dispatcher/PermissionUtils;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, "minVersion":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 126
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 127
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    const/4 v1, 0x1

    .line 131
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 126
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs verifyPermissions([I)Z
    .locals 4
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 45
    array-length v2, p0

    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget v0, p0, v2

    .line 49
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "result":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
