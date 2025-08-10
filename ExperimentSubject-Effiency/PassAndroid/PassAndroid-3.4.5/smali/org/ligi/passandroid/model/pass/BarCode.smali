.class public final Lorg/ligi/passandroid/model/pass/BarCode;
.super Ljava/lang/Object;
.source "BarCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/model/pass/BarCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/BarCode;",
        "",
        "format",
        "Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "message",
        "",
        "(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V",
        "alternativeText",
        "getAlternativeText",
        "()Ljava/lang/String;",
        "setAlternativeText",
        "(Ljava/lang/String;)V",
        "getFormat",
        "()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "getMessage",
        "getBitmap",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "resources",
        "Landroid/content/res/Resources;",
        "Companion",
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
.field public static final Companion:Lorg/ligi/passandroid/model/pass/BarCode$Companion;


# instance fields
.field private alternativeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final format:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ligi/passandroid/model/pass/BarCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/pass/BarCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/model/pass/BarCode;->Companion:Lorg/ligi/passandroid/model/pass/BarCode$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/BarCode;->format:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    iput-object p2, p0, Lorg/ligi/passandroid/model/pass/BarCode;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/ligi/passandroid/model/pass/BarCode;-><init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAlternativeText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/BarCode;->alternativeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitmap(Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v3, "resources"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v3, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 58
    .local v0, "$receiver$iv":Lcom/github/salomonbrys/kodein/KodeinAwareBase;
    const/4 v1, 0x0

    .line 59
    .local v1, "tag$iv":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v4

    .line 60
    new-instance v3, Lorg/ligi/passandroid/model/pass/BarCode$getBitmap$$inlined$instance$1;

    invoke-direct {v3}, Lorg/ligi/passandroid/model/pass/BarCode$getBitmap$$inlined$instance$1;-><init>()V

    check-cast v3, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 59
    invoke-interface {v4, v3, v1}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lorg/ligi/passandroid/Tracker;

    .line 18
    .local v2, "tracker":Lorg/ligi/passandroid/Tracker;
    iget-object v3, p0, Lorg/ligi/passandroid/model/pass/BarCode;->message:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 20
    const-string v3, "No Barcode in pass - strange"

    invoke-interface {v2, v3, v5}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 21
    const/4 v3, 0x0

    .line 30
    :goto_0
    return-object v3

    .line 24
    :cond_0
    iget-object v3, p0, Lorg/ligi/passandroid/model/pass/BarCode;->format:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    if-nez v3, :cond_1

    .line 25
    const-string v3, "Barcode format is null - fallback to QR"

    invoke-static {v3}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    .line 26
    const-string v3, "Barcode format is null - fallback to QR"

    invoke-interface {v2, v3, v5}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 27
    iget-object v3, p0, Lorg/ligi/passandroid/model/pass/BarCode;->message:Ljava/lang/String;

    sget-object v4, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->QR_CODE:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-static {p1, v3, v4}, Lorg/ligi/passandroid/functions/BarcodeKt;->generateBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    goto :goto_0

    .line 30
    :cond_1
    iget-object v3, p0, Lorg/ligi/passandroid/model/pass/BarCode;->message:Ljava/lang/String;

    iget-object v4, p0, Lorg/ligi/passandroid/model/pass/BarCode;->format:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-static {p1, v3, v4}, Lorg/ligi/passandroid/functions/BarcodeKt;->generateBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    goto :goto_0
.end method

.method public final getFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/BarCode;->format:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/BarCode;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlternativeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/BarCode;->alternativeText:Ljava/lang/String;

    return-void
.end method
