.class public Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;
.super Ljava/lang/Object;
.source "DnsInjectionTest.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->new_DnsInjectionTest()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;)J
    .locals 2
    .param p0, "obj"    # Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;

    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public add_input(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 51
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_add_input(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 30
    iget-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    .line 31
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->delete_DnsInjectionTest(J)V

    .line 34
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;
    :cond_0
    iput-wide v2, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->delete()V

    .line 26
    return-void
.end method

.method public increase_verbosity()V
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_increase_verbosity(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;)V

    .line 48
    return-void
.end method

.method public on_entry(Lorg/openobservatory/measurement_kit/swig/EntryCallback;)V
    .locals 2
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/swig/EntryCallback;

    .line 87
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_on_entry(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public on_event(Lorg/openobservatory/measurement_kit/swig/EventCallback;)V
    .locals 2
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/swig/EventCallback;

    .line 79
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_on_event(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public on_log(Lorg/openobservatory/measurement_kit/swig/LogCallback;)V
    .locals 2
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/swig/LogCallback;

    .line 75
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_on_log(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public on_progress(Lorg/openobservatory/measurement_kit/swig/ProgressCallback;)V
    .locals 2
    .param p1, "delegate"    # Lorg/openobservatory/measurement_kit/swig/ProgressCallback;

    .line 71
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_on_progress(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public run()V
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_run(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;)V

    .line 96
    return-void
.end method

.method public set_error_filepath(Ljava/lang/String;)V
    .locals 2
    .param p1, "fpath"    # Ljava/lang/String;

    .line 63
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_set_error_filepath(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public set_input_filepath(Ljava/lang/String;)V
    .locals 2
    .param p1, "fpath"    # Ljava/lang/String;

    .line 55
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_set_input_filepath(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public set_option(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 91
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_set_option(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public set_output_filepath(Ljava/lang/String;)V
    .locals 2
    .param p1, "fpath"    # Ljava/lang/String;

    .line 59
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_set_output_filepath(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public set_verbosity(J)V
    .locals 2
    .param p1, "verbosity"    # J

    .line 43
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_set_verbosity(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;J)V

    .line 44
    return-void
.end method

.method public start(Lorg/openobservatory/measurement_kit/swig/TestCompleteCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/openobservatory/measurement_kit/swig/TestCompleteCallback;

    .line 83
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_start(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public use_logcat()V
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/DnsInjectionTest;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_nettestsJNI;->DnsInjectionTest_use_logcat(JLorg/openobservatory/measurement_kit/swig/DnsInjectionTest;)V

    .line 68
    return-void
.end method
