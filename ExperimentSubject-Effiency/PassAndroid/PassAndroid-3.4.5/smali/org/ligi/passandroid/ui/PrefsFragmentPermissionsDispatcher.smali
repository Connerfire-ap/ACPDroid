.class final Lorg/ligi/passandroid/ui/PrefsFragmentPermissionsDispatcher;
.super Ljava/lang/Object;
.source "PrefsFragmentPermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_ENSUREDAYNIGHT:[Ljava/lang/String;

.field private static final REQUEST_ENSUREDAYNIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/ui/PrefsFragmentPermissionsDispatcher;->PERMISSION_ENSUREDAYNIGHT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static ensureDayNightWithCheck(Lorg/ligi/passandroid/ui/PrefsFragment;)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PrefsFragment;

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/ligi/passandroid/ui/PrefsFragmentPermissionsDispatcher;->PERMISSION_ENSUREDAYNIGHT:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PrefsFragment;->ensureDayNight()V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    sget-object v0, Lorg/ligi/passandroid/ui/PrefsFragmentPermissionsDispatcher;->PERMISSION_ENSUREDAYNIGHT:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/ligi/passandroid/ui/PrefsFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PrefsFragment;I[I)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PrefsFragment;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/ligi/passandroid/ui/PrefsFragmentPermissionsDispatcher;->PERMISSION_ENSUREDAYNIGHT:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    :cond_1
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PrefsFragment;->ensureDayNight()V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
