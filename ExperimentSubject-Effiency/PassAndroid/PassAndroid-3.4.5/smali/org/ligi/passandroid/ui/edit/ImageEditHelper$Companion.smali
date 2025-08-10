.class public final Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;
.super Ljava/lang/Object;
.source "ImageEditHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/edit/ImageEditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;",
        "",
        "()V",
        "REQ_CODE_OFFSET",
        "",
        "getREQ_CODE_OFFSET",
        "()I",
        "REQ_CODE_PICK_FOOTER",
        "getREQ_CODE_PICK_FOOTER",
        "REQ_CODE_PICK_ICON",
        "getREQ_CODE_PICK_ICON",
        "REQ_CODE_PICK_LOGO",
        "getREQ_CODE_PICK_LOGO",
        "REQ_CODE_PICK_STRIP",
        "getREQ_CODE_PICK_STRIP",
        "REQ_CODE_PICK_THUMBNAIL",
        "getREQ_CODE_PICK_THUMBNAIL",
        "getImageStringByRequestCode",
        "",
        "requestCode",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I

    move-result v0

    return v0
.end method

.method private final getREQ_CODE_OFFSET()I
    .locals 1

    .prologue
    .line 49
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_OFFSET:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_OFFSET$cp()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getImageStringByRequestCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestCode"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .line 58
    check-cast v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_LOGO()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "logo"

    .line 57
    .end local p0    # "this":Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;
    :cond_0
    move-object v0, p0

    .line 59
    check-cast v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_ICON()I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string v0, "icon"

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 60
    check-cast v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_THUMBNAIL()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "thumbnail"

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 61
    check-cast v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_STRIP()I

    move-result v0

    if-ne p1, v0, :cond_3

    const-string v0, "strip"

    goto :goto_0

    .line 62
    :cond_3
    check-cast p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_FOOTER()I

    move-result v0

    if-ne p1, v0, :cond_4

    const-string v0, "footer"

    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getREQ_CODE_PICK_FOOTER()I
    .locals 1

    .prologue
    .line 54
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_FOOTER:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_PICK_FOOTER$cp()I

    move-result v0

    return v0
.end method

.method public final getREQ_CODE_PICK_ICON()I
    .locals 1

    .prologue
    .line 51
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_ICON:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_PICK_ICON$cp()I

    move-result v0

    return v0
.end method

.method public final getREQ_CODE_PICK_LOGO()I
    .locals 1

    .prologue
    .line 50
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_LOGO:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_PICK_LOGO$cp()I

    move-result v0

    return v0
.end method

.method public final getREQ_CODE_PICK_STRIP()I
    .locals 1

    .prologue
    .line 52
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_STRIP:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_PICK_STRIP$cp()I

    move-result v0

    return v0
.end method

.method public final getREQ_CODE_PICK_THUMBNAIL()I
    .locals 1

    .prologue
    .line 53
    # getter for: Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_THUMBNAIL:I
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->access$getREQ_CODE_PICK_THUMBNAIL$cp()I

    move-result v0

    return v0
.end method
