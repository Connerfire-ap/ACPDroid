.class final Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TrackerKodeinModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;->invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lorg/ligi/passandroid/NotTracker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ligi/passandroid/NotTracker;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;

    invoke-direct {v0}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;->INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;->invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)Lorg/ligi/passandroid/NotTracker;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)Lorg/ligi/passandroid/NotTracker;
    .locals 1
    .param p1, "$receiver"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lorg/ligi/passandroid/NotTracker;

    invoke-direct {v0}, Lorg/ligi/passandroid/NotTracker;-><init>()V

    return-object v0
.end method
