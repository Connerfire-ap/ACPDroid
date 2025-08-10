.class final Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;
.super Ljava/lang/Object;
.source "PassViewActivityBasePermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_CREATESHORTCUT:[Ljava/lang/String;

.field private static final REQUEST_CREATESHORTCUT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->PERMISSION_CREATESHORTCUT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static createShortcutWithCheck(Lorg/ligi/passandroid/ui/PassViewActivityBase;)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassViewActivityBase;

    .prologue
    .line 17
    sget-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->PERMISSION_CREATESHORTCUT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->createShortcut()V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    sget-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->PERMISSION_CREATESHORTCUT:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PassViewActivityBase;I[I)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassViewActivityBase;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-static {p0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/ligi/passandroid/ui/PassViewActivityBasePermissionsDispatcher;->PERMISSION_CREATESHORTCUT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :cond_1
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->createShortcut()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
