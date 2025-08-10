.class public Lorg/openobservatory/measurement_kit/swig/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/openobservatory/measurement_kit/swig/Version;)J
    .locals 2
    .param p0, "obj"    # Lorg/openobservatory/measurement_kit/swig/Version;

    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/mk_swig_commonJNI;->Version_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 30
    iget-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    .line 31
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_commonJNI;->delete_Version(J)V

    .line 34
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/swig/Version;
    :cond_0
    iput-wide v2, p0, Lorg/openobservatory/measurement_kit/swig/Version;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/swig/Version;->delete()V

    .line 26
    return-void
.end method
