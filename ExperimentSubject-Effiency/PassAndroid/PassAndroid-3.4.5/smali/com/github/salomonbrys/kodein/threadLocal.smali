.class public final Lcom/github/salomonbrys/kodein/threadLocal;
.super Ljava/lang/Object;
.source "jvmReferences.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/RefMaker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u00060\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/threadLocal;",
        "Lcom/github/salomonbrys/kodein/RefMaker;",
        "()V",
        "make",
        "Lkotlin/Pair;",
        "T",
        "Lkotlin/Function0;",
        "",
        "creator",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/salomonbrys/kodein/threadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/github/salomonbrys/kodein/threadLocal;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/threadLocal;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lcom/github/salomonbrys/kodein/threadLocal;

    .end local p0    # "this":Lcom/github/salomonbrys/kodein/threadLocal;
    sput-object p0, Lcom/github/salomonbrys/kodein/threadLocal;->INSTANCE:Lcom/github/salomonbrys/kodein/threadLocal;

    return-void
.end method


# virtual methods
.method public make(Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;
    .locals 3
    .param p1, "creator"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)",
            "Lkotlin/Pair",
            "<TT;",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "creator"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/github/salomonbrys/kodein/threadLocal$make$threadLocal$1;

    invoke-direct {v0, p1}, Lcom/github/salomonbrys/kodein/threadLocal$make$threadLocal$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .local v0, "threadLocal":Lcom/github/salomonbrys/kodein/threadLocal$make$threadLocal$1;
    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/threadLocal$make$threadLocal$1;->get()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/github/salomonbrys/kodein/threadLocal$make$1;

    invoke-direct {v2, v0}, Lcom/github/salomonbrys/kodein/threadLocal$make$1;-><init>(Lcom/github/salomonbrys/kodein/threadLocal$make$threadLocal$1;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method
