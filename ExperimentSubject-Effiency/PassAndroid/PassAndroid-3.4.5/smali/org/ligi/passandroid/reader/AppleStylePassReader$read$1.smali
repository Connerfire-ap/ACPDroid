.class public final Lorg/ligi/passandroid/reader/AppleStylePassReader$read$1;
.super Ljava/lang/Object;
.source "AppleStylePassReader.kt"

# interfaces
.implements Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/reader/AppleStylePassReader;->read(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Lorg/ligi/passandroid/model/pass/Pass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "org/ligi/passandroid/reader/AppleStylePassReader$read$1",
        "Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;",
        "(Lorg/ligi/passandroid/model/pass/PassImpl;)V",
        "onString",
        "",
        "string",
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


# instance fields
.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/PassImpl;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$1;->$pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onString(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$1;->$pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    const/high16 v1, -0x1000000

    invoke-static {p1, v1}, Lorg/ligi/kaxt/StringExtensionsKt;->parseColor(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setAccentColor(I)V

    .line 159
    return-void
.end method
