.class final Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;
.super Ljava/lang/Object;
.source "PassEditActivityPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/GrantableRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PickImagePermissionRequest"
.end annotation


# instance fields
.field private final req_code_pick_icon:I

.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/ligi/passandroid/ui/PassEditActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity;I)V
    .locals 1
    .param p1, "target"    # Lorg/ligi/passandroid/ui/PassEditActivity;
    .param p2, "req_code_pick_icon"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 55
    iput p2, p0, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;->req_code_pick_icon:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity;ILorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/ligi/passandroid/ui/PassEditActivity;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;-><init>(Lorg/ligi/passandroid/ui/PassEditActivity;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public grant()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassEditActivity;

    .line 72
    .local v0, "target":Lorg/ligi/passandroid/ui/PassEditActivity;
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v1, p0, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;->req_code_pick_icon:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassEditActivity;->pickImage(I)V

    goto :goto_0
.end method

.method public proceed()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher$PickImagePermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/PassEditActivity;

    .line 61
    .local v0, "target":Lorg/ligi/passandroid/ui/PassEditActivity;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    # getter for: Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher;->PERMISSION_PICKIMAGE:[Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
