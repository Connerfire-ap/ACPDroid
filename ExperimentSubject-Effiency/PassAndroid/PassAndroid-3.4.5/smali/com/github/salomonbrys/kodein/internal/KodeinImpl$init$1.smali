.class final Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $builder:Lcom/github/salomonbrys/kodein/Kodein$Builder;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Lcom/github/salomonbrys/kodein/Kodein$Builder;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->$builder:Lcom/github/salomonbrys/kodein/Kodein$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .prologue
    .line 28
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->$builder:Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-virtual {v3}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->get_callbacks$kodein_core_main()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 71
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 28
    .local v2, "it":Lkotlin/jvm/functions/Function1;
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lkotlin/jvm/functions/Function1;
    :cond_0
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->$builder:Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-virtual {v3}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->get_bindingCallbacks$kodein_core_main()Ljava/util/List;

    move-result-object v0

    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    .restart local v0    # "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lkotlin/Pair;

    .line 29
    .local v2, "it":Lkotlin/Pair;
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;

    iget-object v4, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    invoke-virtual {v4}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v7

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/salomonbrys/kodein/Kodein$Key;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v4, v8}, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lkotlin/Pair;
    :cond_1
    return-void
.end method
