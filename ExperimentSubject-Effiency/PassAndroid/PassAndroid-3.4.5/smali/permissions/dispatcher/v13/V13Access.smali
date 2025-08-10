.class public final Lpermissions/dispatcher/v13/V13Access;
.super Ljava/lang/Object;
.source "V13Access.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xd
    .end annotation

    .prologue
    .line 39
    invoke-static {p1, p2, p3}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public varargs shouldShowRequestPermissionRationale(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xd
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 23
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/support/v13/app/FragmentCompat;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    const/4 v1, 0x1

    .line 27
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 22
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
