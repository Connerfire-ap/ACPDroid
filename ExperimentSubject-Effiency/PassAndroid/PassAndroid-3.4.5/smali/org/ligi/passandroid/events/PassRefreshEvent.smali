.class public final Lorg/ligi/passandroid/events/PassRefreshEvent;
.super Ljava/lang/Object;
.source "PassRefreshEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ligi/passandroid/events/PassRefreshEvent;",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "(Lorg/ligi/passandroid/model/pass/Pass;)V",
        "getPass",
        "()Lorg/ligi/passandroid/model/pass/Pass;",
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
.field private final pass:Lorg/ligi/passandroid/model/pass/Pass;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 1
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/events/PassRefreshEvent;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    return-void
.end method


# virtual methods
.method public final getPass()Lorg/ligi/passandroid/model/pass/Pass;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lorg/ligi/passandroid/events/PassRefreshEvent;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    return-object v0
.end method
