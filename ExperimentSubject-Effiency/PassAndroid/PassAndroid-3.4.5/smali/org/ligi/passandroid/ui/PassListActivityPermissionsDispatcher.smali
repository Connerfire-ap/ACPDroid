.class final Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "PassListActivityPermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_SCAN:[Ljava/lang/String;

.field private static final REQUEST_SCAN:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;->PERMISSION_SCAN:[Ljava/lang/String;

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

.method static onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PassListActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassListActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-static {p0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;->PERMISSION_SCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity;->showDeniedFor$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity;->scan()V

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;->PERMISSION_SCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity;->showDeniedFor$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()V

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity;->showDeniedFor$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method static scanWithCheck(Lorg/ligi/passandroid/ui/PassListActivity;)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassListActivity;

    .prologue
    .line 17
    sget-object v0, Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;->PERMISSION_SCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity;->scan()V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    sget-object v0, Lorg/ligi/passandroid/ui/PassListActivityPermissionsDispatcher;->PERMISSION_SCAN:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
