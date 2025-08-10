.class public final Lorg/ligi/passandroid/ui/PassViewHelper;
.super Ljava/lang/Object;
.source "PassViewHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewHelper;",
        "",
        "context",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "fingerSize",
        "",
        "getFingerSize",
        "()I",
        "fingerSize$delegate",
        "Lkotlin/Lazy;",
        "windowWidth",
        "getWindowWidth",
        "windowWidth$delegate",
        "getLayoutParamsSoThatWeHaveMinimumAFingerInHeight",
        "Landroid/view/ViewGroup$LayoutParams;",
        "imageView",
        "Landroid/widget/ImageView;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "setBitmapSafe",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final context:Landroid/app/Activity;

.field private final fingerSize$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final windowWidth$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/ui/PassViewHelper;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "fingerSize"

    const-string v5, "getFingerSize()I"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/ui/PassViewHelper;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "windowWidth"

    const-string v5, "getWindowWidth()I"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/ui/PassViewHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->context:Landroid/app/Activity;

    .line 13
    new-instance v0, Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassViewHelper$fingerSize$2;-><init>(Lorg/ligi/passandroid/ui/PassViewHelper;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->fingerSize$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lorg/ligi/passandroid/ui/PassViewHelper$windowWidth$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassViewHelper$windowWidth$2;-><init>(Lorg/ligi/passandroid/ui/PassViewHelper;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->windowWidth$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lorg/ligi/passandroid/ui/PassViewHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassViewHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getFingerSize()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->fingerSize$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/PassViewHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLayoutParamsSoThatWeHaveMinimumAFingerInHeight(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "imageView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bitmap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 28
    .local v0, "$receiver":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewHelper;->getFingerSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassViewHelper;->getFingerSize()I

    move-result v1

    .line 28
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    nop

    return-object v0

    .line 31
    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final getWindowWidth()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewHelper;->windowWidth$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/PassViewHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final setBitmapSafe(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/ui/PassViewHelper;->getLayoutParamsSoThatWeHaveMinimumAFingerInHeight(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
