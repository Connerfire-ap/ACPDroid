.class final Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
.super Lcom/duckduckgo/app/di/AppComponent$Builder;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private application:Landroid/app/Application;

.field private networkModule:Lcom/duckduckgo/app/di/NetworkModule;

.field private seedInstance:Lcom/duckduckgo/app/global/DuckDuckGoApplication;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7504718eb921766bL    # -9.176275123878107E-256

    const/16 v2, 0x12

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent$Builder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/duckduckgo/app/di/AppComponent$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V
    .locals 3
    .param p1, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;-><init>()V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Landroid/app/Application;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Lcom/duckduckgo/app/di/NetworkModule;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->networkModule:Lcom/duckduckgo/app/di/NetworkModule;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public bridge synthetic application(Landroid/app/Application;)Lcom/duckduckgo/app/di/AppComponent$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "application"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->application(Landroid/app/Application;)Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;

    move-result-object p1

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method public application(Landroid/app/Application;)Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    .line 214
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public build()Lcom/duckduckgo/app/di/AppComponent;
    .locals 7

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->networkModule:Lcom/duckduckgo/app/di/NetworkModule;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 194
    new-instance v1, Lcom/duckduckgo/app/di/NetworkModule;

    invoke-direct {v1}, Lcom/duckduckgo/app/di/NetworkModule;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->networkModule:Lcom/duckduckgo/app/di/NetworkModule;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->seedInstance:Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    const-string v3, " must be set"

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 203
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/duckduckgo/app/di/DaggerAppComponent;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    return-object v1

    .line 200
    :cond_1
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Landroid/app/Application;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-boolean v2, v0, v3

    throw v1

    .line 196
    :cond_2
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 197
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    const/4 v6, 0x5

    aput-boolean v2, v0, v6

    .line 198
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    throw v1
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->build()Lcom/duckduckgo/app/di/AppComponent;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public seedInstance(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V
    .locals 3
    .param p1, "arg0"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->seedInstance:Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    .line 209
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    check-cast p1, Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->seedInstance(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V

    const/16 p1, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
