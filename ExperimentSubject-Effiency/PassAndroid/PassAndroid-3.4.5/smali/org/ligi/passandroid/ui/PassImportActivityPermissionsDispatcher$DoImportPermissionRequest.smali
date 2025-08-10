.class final Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;
.super Ljava/lang/Object;
.source "PassImportActivityPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/GrantableRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoImportPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/ligi/passandroid/ui/PassImportActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final withPermission:Z


# direct methods
.method private constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V
    .locals 1
    .param p1, "target"    # Lorg/ligi/passandroid/ui/PassImportActivity;
    .param p2, "withPermission"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 58
    iput-boolean p2, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->withPermission:Z

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity;ZLorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/ligi/passandroid/ui/PassImportActivity;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$1;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassImportActivity;

    .line 71
    .local v0, "target":Lorg/ligi/passandroid/ui/PassImportActivity;
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassImportActivity;->showDeniedDialog()V

    goto :goto_0
.end method

.method public grant()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassImportActivity;

    .line 78
    .local v0, "target":Lorg/ligi/passandroid/ui/PassImportActivity;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-boolean v1, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->withPermission:Z

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassImportActivity;->doImport(Z)V

    goto :goto_0
.end method

.method public proceed()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher$DoImportPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassImportActivity;

    .line 64
    .local v0, "target":Lorg/ligi/passandroid/ui/PassImportActivity;
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    # getter for: Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->PERMISSION_DOIMPORT:[Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
