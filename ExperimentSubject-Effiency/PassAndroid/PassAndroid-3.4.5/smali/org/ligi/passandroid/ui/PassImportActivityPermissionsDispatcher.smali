.class final Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "PassImportActivityPermissionsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;
    }
.end annotation


# static fields
.field private static PENDING_DOIMPORT:Lpermissions/dispatcher/GrantableRequest; = null

.field private static final PERMISSION_DOIMPORT:[Ljava/lang/String;

.field private static final REQUEST_DOIMPORT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;

    return-object v0
.end method

.method static doImportWithCheck(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassImportActivity;
    .param p1, "withPermission"    # Z

    .prologue
    .line 22
    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/PassImportActivity;->doImport(Z)V

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity;ZLorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$1;)V

    sput-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PENDING_DOIMPORT:Lpermissions/dispatcher/GrantableRequest;

    .line 26
    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PassImportActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lorg/ligi/passandroid/ui/PassImportActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 33
    :pswitch_0
    invoke-static {p0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->showDeniedDialog()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PENDING_DOIMPORT:Lpermissions/dispatcher/GrantableRequest;

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PENDING_DOIMPORT:Lpermissions/dispatcher/GrantableRequest;

    invoke-interface {v0}, Lpermissions/dispatcher/GrantableRequest;->grant()V

    .line 44
    :cond_1
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PENDING_DOIMPORT:Lpermissions/dispatcher/GrantableRequest;

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->showDeniedDialog()V

    goto :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
