.class public final Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;
.super Ljava/lang/Object;
.source "QueryUrlConverter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final requestRewriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x13cf207b66be01afL    # -1.4200782198336262E213

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestRewriterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
            ">;)V"
        }
    .end annotation

    .local p1, "requestRewriterProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;>;"
    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->requestRewriterProvider:Ljavax/inject/Provider;

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestRewriterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
            ">;"
        }
    .end annotation

    .local p0, "requestRewriterProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;>;"
    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    new-instance v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;-><init>(Ljavax/inject/Provider;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    new-instance v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    iget-object v2, p0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->requestRewriterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;-><init>(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter_Factory;->get()Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
